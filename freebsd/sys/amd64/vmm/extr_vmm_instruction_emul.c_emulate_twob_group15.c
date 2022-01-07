
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vie {int reg; int mod; } ;
typedef int mem_region_write_t ;
typedef int (* mem_region_read_t ) (void*,int,int ,int *,int,void*) ;


 int EINVAL ;

__attribute__((used)) static int
emulate_twob_group15(void *vm, int vcpuid, uint64_t gpa, struct vie *vie,
    mem_region_read_t memread, mem_region_write_t memwrite, void *memarg)
{
 int error;
 uint64_t buf;

 switch (vie->reg & 7) {
 case 0x7:
  if (vie->mod == 0x3) {




   error = 0;
  } else {




   error = memread(vm, vcpuid, gpa, &buf, 1, memarg);
  }
  break;
 default:
  error = EINVAL;
  break;
 }

 return (error);
}
