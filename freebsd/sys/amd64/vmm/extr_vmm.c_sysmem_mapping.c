
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm {TYPE_1__* mem_segs; } ;
struct mem_map {scalar_t__ len; size_t segid; } ;
struct TYPE_2__ {scalar_t__ sysmem; } ;



__attribute__((used)) static __inline bool
sysmem_mapping(struct vm *vm, struct mem_map *mm)
{

 if (mm->len != 0 && vm->mem_segs[mm->segid].sysmem)
  return (1);
 else
  return (0);
}
