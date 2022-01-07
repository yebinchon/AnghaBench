
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tcbptr ;
struct image_params {int dummy; } ;
typedef scalar_t__ register_t ;


 int cloudabi64_fixup (scalar_t__**,struct image_params*) ;
 int copyout (scalar_t__*,scalar_t__*,int) ;

__attribute__((used)) static int
cloudabi64_fixup_tcb(register_t **stack_base, struct image_params *imgp)
{
 int error;
 register_t tcbptr;


 error = cloudabi64_fixup(stack_base, imgp);
 if (error != 0)
  return (error);






 tcbptr = (register_t)*stack_base;
 return (copyout(&tcbptr, --*stack_base, sizeof(tcbptr)));
}
