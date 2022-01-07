
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;
struct bootblock {int bpbFSInfo; int bpbBytesPerSec; int FSFree; int FSNext; } ;


 int DOSBOOTBLOCKSIZE ;
 int FSFATAL ;
 int SEEK_SET ;
 int lseek (int,int,int ) ;
 int perr (char*) ;
 int read (int,scalar_t__*,int) ;
 int write (int,scalar_t__*,int) ;

int
writefsinfo(int dosfs, struct bootblock *boot)
{
 u_char fsinfo[2 * DOSBOOTBLOCKSIZE];

 if (lseek(dosfs, boot->bpbFSInfo * boot->bpbBytesPerSec, SEEK_SET)
     != boot->bpbFSInfo * boot->bpbBytesPerSec
     || read(dosfs, fsinfo, sizeof fsinfo) != sizeof fsinfo) {
  perr("could not read fsinfo block");
  return FSFATAL;
 }
 fsinfo[0x1e8] = (u_char)boot->FSFree;
 fsinfo[0x1e9] = (u_char)(boot->FSFree >> 8);
 fsinfo[0x1ea] = (u_char)(boot->FSFree >> 16);
 fsinfo[0x1eb] = (u_char)(boot->FSFree >> 24);
 fsinfo[0x1ec] = (u_char)boot->FSNext;
 fsinfo[0x1ed] = (u_char)(boot->FSNext >> 8);
 fsinfo[0x1ee] = (u_char)(boot->FSNext >> 16);
 fsinfo[0x1ef] = (u_char)(boot->FSNext >> 24);
 if (lseek(dosfs, boot->bpbFSInfo * boot->bpbBytesPerSec, SEEK_SET)
     != boot->bpbFSInfo * boot->bpbBytesPerSec
     || write(dosfs, fsinfo, sizeof fsinfo)
     != sizeof fsinfo) {
  perr("Unable to write bpbFSInfo");
  return FSFATAL;
 }
 return 0;
}
