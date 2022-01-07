
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmctx {int fd; } ;
struct vm_memseg {size_t len; int segid; int name; } ;


 int EINVAL ;
 int ENAMETOOLONG ;
 int VM_ALLOC_MEMSEG ;
 int VM_MEMSEG_NAME (struct vm_memseg*) ;
 int bzero (struct vm_memseg*,int) ;
 scalar_t__ cmpseg (size_t,char const*,size_t,int ) ;
 int errno ;
 int ioctl (int ,int ,struct vm_memseg*) ;
 size_t strlcpy (int ,char const*,int) ;
 int vm_get_memseg (struct vmctx*,int,size_t*,int ,int) ;

__attribute__((used)) static int
vm_alloc_memseg(struct vmctx *ctx, int segid, size_t len, const char *name)
{
 struct vm_memseg memseg;
 size_t n;
 int error;






 error = vm_get_memseg(ctx, segid, &memseg.len, memseg.name,
     sizeof(memseg.name));
 if (error)
  return (error);

 if (memseg.len != 0) {
  if (cmpseg(len, name, memseg.len, VM_MEMSEG_NAME(&memseg))) {
   errno = EINVAL;
   return (-1);
  } else {
   return (0);
  }
 }

 bzero(&memseg, sizeof(struct vm_memseg));
 memseg.segid = segid;
 memseg.len = len;
 if (name != ((void*)0)) {
  n = strlcpy(memseg.name, name, sizeof(memseg.name));
  if (n >= sizeof(memseg.name)) {
   errno = ENAMETOOLONG;
   return (-1);
  }
 }

 error = ioctl(ctx->fd, VM_ALLOC_MEMSEG, &memseg);
 return (error);
}
