
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
struct vie {int dummy; } ;
typedef enum vm_reg_name { ____Placeholder_vm_reg_name } vm_reg_name ;


 int vie_calc_bytereg (struct vie*,int*,int*) ;
 int vm_get_register (void*,int,int,int*) ;
 int vm_set_register (void*,int,int,int) ;

__attribute__((used)) static int
vie_write_bytereg(void *vm, int vcpuid, struct vie *vie, uint8_t byte)
{
 uint64_t origval, val, mask;
 int error, lhbr;
 enum vm_reg_name reg;

 vie_calc_bytereg(vie, &reg, &lhbr);
 error = vm_get_register(vm, vcpuid, reg, &origval);
 if (error == 0) {
  val = byte;
  mask = 0xff;
  if (lhbr) {




   val <<= 8;
   mask <<= 8;
  }
  val |= origval & ~mask;
  error = vm_set_register(vm, vcpuid, reg, val);
 }
 return (error);
}
