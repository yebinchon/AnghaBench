
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
 int memcpy (void*,void*,size_t) ;
 int memset (void*,int ,size_t) ;
 int pread (int ,void*,size_t,int ) ;

ssize_t
bread(struct uufsd *disk, ufs2_daddr_t blockno, void *data, size_t size)
{
 void *p2;
 ssize_t cnt;

 ERROR(disk, ((void*)0));

 p2 = data;






 if (((intptr_t)data) & 0x3f) {
  p2 = malloc(size);
  if (p2 == ((void*)0)) {
   ERROR(disk, "allocate bounce buffer");
   goto fail;
  }
 }
 cnt = pread(disk->d_fd, p2, size, (off_t)(blockno * disk->d_bsize));
 if (cnt == -1) {
  ERROR(disk, "read error from block device");
  goto fail;
 }
 if (cnt == 0) {
  ERROR(disk, "end of file from block device");
  goto fail;
 }
 if ((size_t)cnt != size) {
  ERROR(disk, "short read or read error from block device");
  goto fail;
 }
 if (p2 != data) {
  memcpy(data, p2, size);
  free(p2);
 }
 return (cnt);
fail: memset(data, 0, size);
 if (p2 != data) {
  free(p2);
 }
 return (-1);
}
