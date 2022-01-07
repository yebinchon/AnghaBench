
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pmap_t ;
typedef int boolean_t ;
struct TYPE_3__ {int pm_type; } ;


 int EPT_PG_IGNORE_PAT ;
 int EPT_PG_MEMORY_TYPE (int) ;



 int X86_PG_PDE_CACHE ;
 int X86_PG_PTE_CACHE ;
 int panic (char*,int) ;

__attribute__((used)) static int
pmap_cache_mask(pmap_t pmap, boolean_t is_pde)
{
 int mask;

 switch (pmap->pm_type) {
 case 128:
 case 129:
  mask = is_pde ? X86_PG_PDE_CACHE : X86_PG_PTE_CACHE;
  break;
 case 130:
  mask = EPT_PG_IGNORE_PAT | EPT_PG_MEMORY_TYPE(0x7);
  break;
 default:
  panic("pmap_cache_mask: invalid pm_type %d", pmap->pm_type);
 }

 return (mask);
}
