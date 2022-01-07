
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmctx {int dummy; } ;
struct seg_desc {int access; int limit; int base; } ;


 int vm_get_desc (struct vmctx*,int,int,int *,int *,int *) ;

int
vm_get_seg_desc(struct vmctx *ctx, int vcpu, int reg, struct seg_desc *seg_desc)
{
 int error;

 error = vm_get_desc(ctx, vcpu, reg, &seg_desc->base, &seg_desc->limit,
     &seg_desc->access);
 return (error);
}
