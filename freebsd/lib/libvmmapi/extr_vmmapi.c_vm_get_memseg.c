
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmctx {int fd; } ;
struct vm_memseg {int segid; size_t len; int name; } ;


 int ENAMETOOLONG ;
 int VM_GET_MEMSEG ;
 int errno ;
 int ioctl (int ,int ,struct vm_memseg*) ;
 size_t strlcpy (char*,int ,size_t) ;

int
vm_get_memseg(struct vmctx *ctx, int segid, size_t *lenp, char *namebuf,
    size_t bufsize)
{
 struct vm_memseg memseg;
 size_t n;
 int error;

 memseg.segid = segid;
 error = ioctl(ctx->fd, VM_GET_MEMSEG, &memseg);
 if (error == 0) {
  *lenp = memseg.len;
  n = strlcpy(namebuf, memseg.name, bufsize);
  if (n >= bufsize) {
   errno = ENAMETOOLONG;
   error = -1;
  }
 }
 return (error);
}
