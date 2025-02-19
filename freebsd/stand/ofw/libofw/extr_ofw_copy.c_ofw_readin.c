
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef scalar_t__ ssize_t ;


 size_t READIN_BUF ;
 int bcopy (void*,void*,scalar_t__) ;
 int free (void*) ;
 void* malloc (size_t) ;
 size_t min (size_t,size_t const) ;
 scalar_t__ ofw_mapmem (scalar_t__,size_t const) ;
 int printf (char*) ;
 scalar_t__ read (int const,void*,size_t) ;

ssize_t
ofw_readin(const int fd, vm_offset_t dest, const size_t len)
{
 void *buf;
 size_t resid, chunk, get;
 ssize_t got;
 vm_offset_t p;

 p = dest;

 chunk = min(READIN_BUF, len);
 buf = malloc(chunk);
 if (buf == ((void*)0)) {
  printf("ofw_readin: buf malloc failed\n");
  return(0);
 }

        if (ofw_mapmem(dest, len)) {
                printf("ofw_readin: map error\n");
                free(buf);
                return (0);
        }

 for (resid = len; resid > 0; resid -= got, p += got) {
  get = min(chunk, resid);
  got = read(fd, buf, get);

  if (got <= 0) {
   if (got < 0)
    printf("ofw_readin: read failed\n");
   break;
  }

  bcopy(buf, (void *)p, got);
 }

 free(buf);
 return(len - resid);
}
