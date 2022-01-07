
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ufs2_daddr_t ;
struct uufsd {int d_bsize; int d_fd; } ;
typedef int ssize_t ;
typedef int off_t ;


 int ERROR (struct uufsd*,char*) ;
 int free (void*) ;
 void* malloc (size_t) ;
 int memcpy (void*,void const*,size_t) ;
 int pwrite (int ,void const*,size_t,int ) ;
 int ufs_disk_write (struct uufsd*) ;

ssize_t
bwrite(struct uufsd *disk, ufs2_daddr_t blockno, const void *data, size_t size)
{
 ssize_t cnt;
 int rv;
 void *p2 = ((void*)0);

 ERROR(disk, ((void*)0));

 rv = ufs_disk_write(disk);
 if (rv == -1) {
  ERROR(disk, "failed to open disk for writing");
  return (-1);
 }







 if (((intptr_t)data) & 0x3f) {
  p2 = malloc(size);
  if (p2 == ((void*)0)) {
   ERROR(disk, "allocate bounce buffer");
   return (-1);
  }
  memcpy(p2, data, size);
  data = p2;
 }
 cnt = pwrite(disk->d_fd, data, size, (off_t)(blockno * disk->d_bsize));
 if (p2 != ((void*)0))
  free(p2);
 if (cnt == -1) {
  ERROR(disk, "write error to block device");
  return (-1);
 }
 if ((size_t)cnt != size) {
  ERROR(disk, "short write to block device");
  return (-1);
 }

 return (cnt);
}
