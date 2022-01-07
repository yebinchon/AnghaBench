
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proc_handle {size_t nmappings; struct map_info* mappings; } ;
struct TYPE_2__ {uintptr_t pr_vaddr; uintptr_t pr_size; } ;
struct map_info {TYPE_1__ map; } ;


 int * proc_rdagent (struct proc_handle*) ;

__attribute__((used)) static struct map_info *
_proc_addr2map(struct proc_handle *p, uintptr_t addr)
{
 struct map_info *mapping;
 size_t i;

 if (p->nmappings == 0)
  if (proc_rdagent(p) == ((void*)0))
   return (((void*)0));
 for (i = 0; i < p->nmappings; i++) {
  mapping = &p->mappings[i];
  if (addr >= mapping->map.pr_vaddr &&
      addr < mapping->map.pr_vaddr + mapping->map.pr_size)
   return (mapping);
 }
 return (((void*)0));
}
