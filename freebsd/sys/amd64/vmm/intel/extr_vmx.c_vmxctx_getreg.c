
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vmxctx {int dummy; } ;
typedef int register_t ;


 int EINVAL ;
 int * vmxctx_regptr (struct vmxctx*,int) ;

__attribute__((used)) static int
vmxctx_getreg(struct vmxctx *vmxctx, int reg, uint64_t *retval)
{
 register_t *regp;

 if ((regp = vmxctx_regptr(vmxctx, reg)) != ((void*)0)) {
  *retval = *regp;
  return (0);
 } else
  return (EINVAL);
}
