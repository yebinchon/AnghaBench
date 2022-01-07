
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int op_byte; } ;
struct vie {int opsize; int reg; int immediate; TYPE_1__ op; } ;
typedef int mem_region_write_t ;
typedef int (* mem_region_read_t ) (void*,int,int,int*,int,void*) ;


 int EINVAL ;
 int PSL_N ;
 int PSL_PF ;
 int PSL_Z ;
 int RFLAGS_STATUS_BITS ;
 int VM_REG_GUEST_RFLAGS ;
 int getandflags (int,int,int ) ;
 int vie_read_register (void*,int,int ,int*) ;
 int vie_update_register (void*,int,int ,int,int) ;

__attribute__((used)) static int
emulate_test(void *vm, int vcpuid, uint64_t gpa, struct vie *vie,
    mem_region_read_t memread, mem_region_write_t memwrite, void *arg)
{
 int error, size;
 uint64_t op1, rflags, rflags2;

 size = vie->opsize;
 error = EINVAL;

 switch (vie->op.op_byte) {
 case 0xF7:
  if ((vie->reg & 7) != 0)
   return (EINVAL);

  error = memread(vm, vcpuid, gpa, &op1, size, arg);
  if (error)
   return (error);

  rflags2 = getandflags(size, op1, vie->immediate);
  break;
 default:
  return (EINVAL);
 }
 error = vie_read_register(vm, vcpuid, VM_REG_GUEST_RFLAGS, &rflags);
 if (error)
  return (error);





 rflags &= ~RFLAGS_STATUS_BITS;
 rflags |= rflags2 & (PSL_PF | PSL_Z | PSL_N);

 error = vie_update_register(vm, vcpuid, VM_REG_GUEST_RFLAGS, rflags, 8);
 return (error);
}
