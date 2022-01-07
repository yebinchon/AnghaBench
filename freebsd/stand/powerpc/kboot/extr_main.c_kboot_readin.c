
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef scalar_t__ ssize_t ;


 size_t PAGE_SIZE ;
 int free (void*) ;
 int kboot_copyin (void*,int ,scalar_t__) ;
 void* malloc (size_t) ;
 size_t min (size_t,size_t const) ;
 int printf (char*) ;
 scalar_t__ read (int const,void*,size_t) ;

ssize_t
kboot_readin(const int fd, vm_offset_t dest, const size_t len)
{
 void *buf;
 size_t resid, chunk, get;
 ssize_t got;
 vm_offset_t p;

 p = dest;

 chunk = min(PAGE_SIZE, len);
 buf = malloc(chunk);
 if (buf == ((void*)0)) {
  printf("kboot_readin: buf malloc failed\n");
  return (0);
 }

 for (resid = len; resid > 0; resid -= got, p += got) {
  get = min(chunk, resid);
  got = read(fd, buf, get);
  if (got <= 0) {
   if (got < 0)
    printf("kboot_readin: read failed\n");
   break;
  }

  kboot_copyin(buf, p, got);
 }

 free (buf);
 return (len - resid);
}
