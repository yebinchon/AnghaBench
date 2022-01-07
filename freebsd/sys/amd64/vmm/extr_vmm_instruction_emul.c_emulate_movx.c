
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint16_t ;
struct TYPE_2__ {int op_byte; } ;
struct vie {int opsize; size_t reg; TYPE_1__ op; } ;
typedef int mem_region_write_t ;
typedef int (* mem_region_read_t ) (void*,int,int ,int *,int,void*) ;
typedef int int8_t ;
typedef enum vm_reg_name { ____Placeholder_vm_reg_name } vm_reg_name ;


 int EINVAL ;
 int* gpr_map ;
 int vie_update_register (void*,int,int,int ,int) ;

__attribute__((used)) static int
emulate_movx(void *vm, int vcpuid, uint64_t gpa, struct vie *vie,
      mem_region_read_t memread, mem_region_write_t memwrite,
      void *arg)
{
 int error, size;
 enum vm_reg_name reg;
 uint64_t val;

 size = vie->opsize;
 error = EINVAL;

 switch (vie->op.op_byte) {
 case 0xB6:
  error = memread(vm, vcpuid, gpa, &val, 1, arg);
  if (error)
   break;


  reg = gpr_map[vie->reg];


  val = (uint8_t)val;


  error = vie_update_register(vm, vcpuid, reg, val, size);
  break;
 case 0xB7:







  error = memread(vm, vcpuid, gpa, &val, 2, arg);
  if (error)
   return (error);

  reg = gpr_map[vie->reg];


  val = (uint16_t)val;

  error = vie_update_register(vm, vcpuid, reg, val, size);
  break;
 case 0xBE:
  error = memread(vm, vcpuid, gpa, &val, 1, arg);
  if (error)
   break;


  reg = gpr_map[vie->reg];


  val = (int8_t)val;


  error = vie_update_register(vm, vcpuid, reg, val, size);
  break;
 default:
  break;
 }
 return (error);
}
