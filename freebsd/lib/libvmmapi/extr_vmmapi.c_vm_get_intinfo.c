
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vmctx {int fd; } ;
struct vm_intinfo {int vcpuid; int info2; int info1; } ;


 int VM_GET_INTINFO ;
 int bzero (struct vm_intinfo*,int) ;
 int ioctl (int ,int ,struct vm_intinfo*) ;

int
vm_get_intinfo(struct vmctx *ctx, int vcpu, uint64_t *info1, uint64_t *info2)
{
 struct vm_intinfo vmii;
 int error;

 bzero(&vmii, sizeof(struct vm_intinfo));
 vmii.vcpuid = vcpu;
 error = ioctl(ctx->fd, VM_GET_INTINFO, &vmii);
 if (error == 0) {
  *info1 = vmii.info1;
  *info2 = vmii.info2;
 }
 return (error);
}
