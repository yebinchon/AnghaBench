
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uufsd {int d_fd; char* d_inoblock; int d_mine; char* d_sbcsum; int * d_name; } ;


 int ERROR (struct uufsd*,int *) ;
 int MINE_NAME ;
 int close (int) ;
 int free (char*) ;

int
ufs_disk_close(struct uufsd *disk)
{
 ERROR(disk, ((void*)0));
 close(disk->d_fd);
 disk->d_fd = -1;
 if (disk->d_inoblock != ((void*)0)) {
  free(disk->d_inoblock);
  disk->d_inoblock = ((void*)0);
 }
 if (disk->d_mine & MINE_NAME) {
  free((char *)(uintptr_t)disk->d_name);
  disk->d_name = ((void*)0);
 }
 if (disk->d_sbcsum != ((void*)0)) {
  free(disk->d_sbcsum);
  disk->d_sbcsum = ((void*)0);
 }
 return (0);
}
