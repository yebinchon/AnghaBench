
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
struct savefpu {int dummy; } ;
struct fpu_kern_ctx {int hwstate1; } ;


 int XSAVE_AREA_ALIGN ;
 scalar_t__ roundup2 (scalar_t__,int ) ;

__attribute__((used)) static struct savefpu *
fpu_kern_ctx_savefpu(struct fpu_kern_ctx *ctx)
{
 vm_offset_t p;

 p = (vm_offset_t)&ctx->hwstate1;
 p = roundup2(p, XSAVE_AREA_ALIGN);
 return ((struct savefpu *)p);
}
