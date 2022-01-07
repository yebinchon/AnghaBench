
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct image_params {TYPE_1__* args; } ;
typedef int register_t ;
struct TYPE_2__ {scalar_t__ argc; } ;
typedef int Elf32_Addr ;


 int EFAULT ;
 int suword32 (int *,int ) ;

__attribute__((used)) static int
linux_fixup_elf(register_t **stack_base, struct image_params *imgp)
{
 Elf32_Addr *base;

 base = (Elf32_Addr *)*stack_base;
 base--;
 if (suword32(base, (uint32_t)imgp->args->argc) == -1)
  return (EFAULT);
 *stack_base = (register_t *)base;
 return (0);
}
