
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* pmap_t ;
typedef int boolean_t ;
struct TYPE_4__ {int pm_type; } ;


 int EPT_PG_IGNORE_PAT ;
 int EPT_PG_MEMORY_TYPE (int) ;
 int PG_NC_PCD ;
 int PG_NC_PWT ;



 int X86_PG_PDE_PAT ;
 int X86_PG_PTE_PAT ;
 int panic (char*,int) ;
 int* pat_index ;
 int pmap_is_valid_memattr (TYPE_1__*,int) ;

int
pmap_cache_bits(pmap_t pmap, int mode, boolean_t is_pde)
{
 int cache_bits, pat_flag, pat_idx;

 if (!pmap_is_valid_memattr(pmap, mode))
  panic("Unknown caching mode %d\n", mode);

 switch (pmap->pm_type) {
 case 128:
 case 129:

  pat_flag = is_pde ? X86_PG_PDE_PAT : X86_PG_PTE_PAT;


  pat_idx = pat_index[mode];


  cache_bits = 0;
  if (pat_idx & 0x4)
   cache_bits |= pat_flag;
  if (pat_idx & 0x2)
   cache_bits |= PG_NC_PCD;
  if (pat_idx & 0x1)
   cache_bits |= PG_NC_PWT;
  break;

 case 130:
  cache_bits = EPT_PG_IGNORE_PAT | EPT_PG_MEMORY_TYPE(mode);
  break;

 default:
  panic("unsupported pmap type %d", pmap->pm_type);
 }

 return (cache_bits);
}
