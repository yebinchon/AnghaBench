
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmctx {int fd; } ;
struct vm_hpet_cap {int capabilities; } ;


 int VM_GET_HPET_CAPABILITIES ;
 int bzero (struct vm_hpet_cap*,int) ;
 int ioctl (int ,int ,struct vm_hpet_cap*) ;

int
vm_get_hpet_capabilities(struct vmctx *ctx, uint32_t *capabilities)
{
 int error;
 struct vm_hpet_cap cap;

 bzero(&cap, sizeof(struct vm_hpet_cap));
 error = ioctl(ctx->fd, VM_GET_HPET_CAPABILITIES, &cap);
 if (capabilities != ((void*)0))
  *capabilities = cap.capabilities;
 return (error);
}
