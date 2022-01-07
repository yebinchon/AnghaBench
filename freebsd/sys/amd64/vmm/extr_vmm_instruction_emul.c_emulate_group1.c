
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
 int emulate_and (void*,int,int ,struct vie*,int ,int ,void*) ;
 int emulate_cmp (void*,int,int ,struct vie*,int ,int ,void*) ;
 int emulate_or (void*,int,int ,struct vie*,int ,int ,void*) ;

__attribute__((used)) static int
emulate_group1(void *vm, int vcpuid, uint64_t gpa, struct vie *vie,
    struct vm_guest_paging *paging, mem_region_read_t memread,
    mem_region_write_t memwrite, void *memarg)
{
 int error;

 switch (vie->reg & 7) {
 case 0x1:
  error = emulate_or(vm, vcpuid, gpa, vie,
      memread, memwrite, memarg);
  break;
 case 0x4:
  error = emulate_and(vm, vcpuid, gpa, vie,
      memread, memwrite, memarg);
  break;
 case 0x7:
  error = emulate_cmp(vm, vcpuid, gpa, vie,
      memread, memwrite, memarg);
  break;
 default:
  error = EINVAL;
  break;
 }

 return (error);
}
