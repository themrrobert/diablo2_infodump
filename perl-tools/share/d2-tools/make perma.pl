#make perma: make the D2s in C:\Diablo2\Save\my_d.d2s permanent by
#scrapping away with backup data.
use warnings;
use strict;

my $D2sLoadedFile = 'loaded.d2s'; #created by load_d2s.pl
my $D2sRevertFile = 'revert.d2s'; #created by change.pl

if(-f $D2sLoadedFile){
  CORE::say 'purging ', $D2sLoadedFile, ' from "load_d2s.pl"';
  unlink $D2sLoadedFile or die $!
}
else{
  CORE::say 'no ', $D2sLoadedFile, ' to purge from "load_d2s.pl"';
}

if(-f $D2sRevertFile){
  CORE::say 'purging ', $D2sRevertFile, ' from "change.pl"';
  unlink $D2sRevertFile or die $!
}
else{
  CORE::say 'no ', $D2sRevertFile, ' to purge from "change.pl"';
}
