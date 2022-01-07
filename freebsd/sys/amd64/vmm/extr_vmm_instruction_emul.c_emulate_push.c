
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vm_guest_paging {int dummy; } ;
struct vie {int reg; } ;
typedef int mem_region_write_t ;
typedef int mem_region_read_t ;


 int EINVAL ;
 int emulate_stack_op (void*,int,int ,struct vie*,struct vm_guest_paging*,int ,int ,void*) ;

__attribute__((used)) static int
emulate_push(void *vm, int vcpuid, uint64_t mmio_gpa, struct vie *vie,
    struct vm_guest_paging *paging, mem_region_read_t memread,
    mem_region_write_t memwrite, void *arg)
{
 int error;







 if ((vie->reg & 7) != 6)
  return (EINVAL);

 error = emulate_stack_op(vm, vcpuid, mmio_gpa, vie, paging, memread,
     memwrite, arg);
 return (error);
}
