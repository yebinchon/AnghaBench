
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct bootblock {int FATsecs; int bpbBytesPerSec; int bpbResSectors; } ;
typedef int off_t ;


 int SEEK_SET ;
 int * calloc (int,int) ;
 int free (int *) ;
 int lseek (int,int,int ) ;
 int perr (char*,...) ;
 scalar_t__ read (int,int *,int) ;

__attribute__((used)) static int
_readfat(int fs, struct bootblock *boot, u_int no, u_char **buffer)
{
 off_t off;

 *buffer = calloc(boot->FATsecs, boot->bpbBytesPerSec);
 if (*buffer == ((void*)0)) {
  perr("No space for FAT sectors (%zu)",
      (size_t)boot->FATsecs);
  return 0;
 }

 off = boot->bpbResSectors + no * boot->FATsecs;
 off *= boot->bpbBytesPerSec;

 if (lseek(fs, off, SEEK_SET) != off) {
  perr("Unable to read FAT");
  goto err;
 }

 if ((size_t)read(fs, *buffer, boot->FATsecs * boot->bpbBytesPerSec)
     != boot->FATsecs * boot->bpbBytesPerSec) {
  perr("Unable to read FAT");
  goto err;
 }

 return 1;

    err:
 free(*buffer);
 return 0;
}
