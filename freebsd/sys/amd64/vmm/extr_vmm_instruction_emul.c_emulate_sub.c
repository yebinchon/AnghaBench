
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int op_byte; } ;
struct vie {int opsize; size_t reg; TYPE_1__ op; } ;
typedef int mem_region_write_t ;
typedef int (* mem_region_read_t ) (void*,int,int,int*,int,void*) ;
typedef enum vm_reg_name { ____Placeholder_vm_reg_name } vm_reg_name ;


 int EINVAL ;
 int RFLAGS_STATUS_BITS ;
 int VM_REG_GUEST_RFLAGS ;
 int getcc (int,int,int) ;
 int* gpr_map ;
 int vie_read_register (void*,int,int,int*) ;
 int vie_update_register (void*,int,int,int,int) ;

__attribute__((used)) static int
emulate_sub(void *vm, int vcpuid, uint64_t gpa, struct vie *vie,
     mem_region_read_t memread, mem_region_write_t memwrite, void *arg)
{
 int error, size;
 uint64_t nval, rflags, rflags2, val1, val2;
 enum vm_reg_name reg;

 size = vie->opsize;
 error = EINVAL;

 switch (vie->op.op_byte) {
 case 0x2B:
  reg = gpr_map[vie->reg];
  error = vie_read_register(vm, vcpuid, reg, &val1);
  if (error)
   break;


  error = memread(vm, vcpuid, gpa, &val2, size, arg);
  if (error)
   break;


  nval = val1 - val2;
  error = vie_update_register(vm, vcpuid, reg, nval, size);
  break;
 default:
  break;
 }

 if (!error) {
  rflags2 = getcc(size, val1, val2);
  error = vie_read_register(vm, vcpuid, VM_REG_GUEST_RFLAGS,
      &rflags);
  if (error)
   return (error);

  rflags &= ~RFLAGS_STATUS_BITS;
  rflags |= rflags2 & RFLAGS_STATUS_BITS;
  error = vie_update_register(vm, vcpuid, VM_REG_GUEST_RFLAGS,
      rflags, 8);
 }

 return (error);
}
