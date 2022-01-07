
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int op_byte; } ;
struct vie {int opsize; size_t reg; int immediate; TYPE_1__ op; } ;
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
emulate_cmp(void *vm, int vcpuid, uint64_t gpa, struct vie *vie,
     mem_region_read_t memread, mem_region_write_t memwrite, void *arg)
{
 int error, size;
 uint64_t regop, memop, op1, op2, rflags, rflags2;
 enum vm_reg_name reg;

 size = vie->opsize;
 switch (vie->op.op_byte) {
 case 0x39:
 case 0x3B:
  reg = gpr_map[vie->reg];
  error = vie_read_register(vm, vcpuid, reg, &regop);
  if (error)
   return (error);


  error = memread(vm, vcpuid, gpa, &memop, size, arg);
  if (error)
   return (error);

  if (vie->op.op_byte == 0x3B) {
   op1 = regop;
   op2 = memop;
  } else {
   op1 = memop;
   op2 = regop;
  }
  rflags2 = getcc(size, op1, op2);
  break;
 case 0x80:
 case 0x81:
 case 0x83:
  if (vie->op.op_byte == 0x80)
   size = 1;


                error = memread(vm, vcpuid, gpa, &op1, size, arg);
  if (error)
   return (error);

  rflags2 = getcc(size, op1, vie->immediate);
  break;
 default:
  return (EINVAL);
 }
 error = vie_read_register(vm, vcpuid, VM_REG_GUEST_RFLAGS, &rflags);
 if (error)
  return (error);
 rflags &= ~RFLAGS_STATUS_BITS;
 rflags |= rflags2 & RFLAGS_STATUS_BITS;

 error = vie_update_register(vm, vcpuid, VM_REG_GUEST_RFLAGS, rflags, 8);
 return (error);
}
