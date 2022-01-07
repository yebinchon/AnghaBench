
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct bootblock {scalar_t__ ClustMask; size_t bpbResSectors; size_t bpbBytesPerSec; int bpbMedia; } ;
typedef size_t off_t ;


 scalar_t__ CLUST16_MASK ;
 scalar_t__ CLUST32_MASK ;
 int SEEK_SET ;
 int free (int*) ;
 size_t lseek (int,size_t,int ) ;
 int* malloc (size_t) ;
 int perr (char*,...) ;
 scalar_t__ read (int,int*,size_t) ;

int
checkdirty(int fs, struct bootblock *boot)
{
 off_t off;
 u_char *buffer;
 int ret = 0;
 size_t len;

 if (boot->ClustMask != CLUST16_MASK && boot->ClustMask != CLUST32_MASK)
  return 0;

 off = boot->bpbResSectors;
 off *= boot->bpbBytesPerSec;

 buffer = malloc(len = boot->bpbBytesPerSec);
 if (buffer == ((void*)0)) {
  perr("No space for FAT sectors (%zu)", len);
  return 1;
 }

 if (lseek(fs, off, SEEK_SET) != off) {
  perr("Unable to read FAT");
  goto err;
 }

 if ((size_t)read(fs, buffer, boot->bpbBytesPerSec) !=
     boot->bpbBytesPerSec) {
  perr("Unable to read FAT");
  goto err;
 }





 if (buffer[0] != boot->bpbMedia || buffer[1] != 0xff)
  goto err;
 if (boot->ClustMask == CLUST16_MASK) {
  if ((buffer[2] & 0xf8) != 0xf8 || (buffer[3] & 0x3f) != 0x3f)
   goto err;
 } else {
  if (buffer[2] != 0xff || (buffer[3] & 0x0f) != 0x0f
      || (buffer[4] & 0xf8) != 0xf8 || buffer[5] != 0xff
      || buffer[6] != 0xff || (buffer[7] & 0x03) != 0x03)
   goto err;
 }




 if (boot->ClustMask == CLUST16_MASK) {
  if ((buffer[3] & 0xc0) == 0xc0)
   ret = 1;
 } else {
  if ((buffer[7] & 0x0c) == 0x0c)
   ret = 1;
 }

err:
 free(buffer);
 return ret;
}
