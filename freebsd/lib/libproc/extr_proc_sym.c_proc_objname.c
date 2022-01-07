
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct proc_handle {size_t nmappings; TYPE_1__* mappings; } ;
struct TYPE_4__ {uintptr_t pr_vaddr; uintptr_t pr_size; int pr_mapname; } ;
typedef TYPE_2__ prmap_t ;
struct TYPE_3__ {TYPE_2__ map; } ;


 int * proc_rdagent (struct proc_handle*) ;
 int strlcpy (char*,int ,size_t) ;

char *
proc_objname(struct proc_handle *p, uintptr_t addr, char *objname,
    size_t objnamesz)
{
 prmap_t *map;
 size_t i;

 if (p->nmappings == 0)
  if (proc_rdagent(p) == ((void*)0))
   return (((void*)0));
 for (i = 0; i < p->nmappings; i++) {
  map = &p->mappings[i].map;
  if (addr >= map->pr_vaddr &&
      addr < map->pr_vaddr + map->pr_size) {
   strlcpy(objname, map->pr_mapname, objnamesz);
   return (objname);
  }
 }
 return (((void*)0));
}
