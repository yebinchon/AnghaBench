
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pt_entry_t ;
typedef TYPE_1__* pmap_t ;
struct TYPE_3__ {int pm_type; } ;


 int EPT_PG_IGNORE_PAT ;
 int EPT_PG_MEMORY_TYPE (int) ;
 int PG_NC_PCD ;
 int PG_NC_PWT ;



 int X86_PG_PDE_PAT ;
 int X86_PG_PTE_PAT ;
 int panic (char*,int) ;

__attribute__((used)) static int
pmap_pat_index(pmap_t pmap, pt_entry_t pte, bool is_pde)
{
 int pat_flag, pat_idx;

 pat_idx = 0;
 switch (pmap->pm_type) {
 case 128:
 case 129:

  pat_flag = is_pde ? X86_PG_PDE_PAT : X86_PG_PTE_PAT;

  if ((pte & pat_flag) != 0)
   pat_idx |= 0x4;
  if ((pte & PG_NC_PCD) != 0)
   pat_idx |= 0x2;
  if ((pte & PG_NC_PWT) != 0)
   pat_idx |= 0x1;
  break;
 case 130:
  if ((pte & EPT_PG_IGNORE_PAT) != 0)
   panic("EPT PTE %#lx has no PAT memory type", pte);
  pat_idx = (pte & EPT_PG_MEMORY_TYPE(0x7)) >> 3;
  break;
 }


 if (pat_idx == 4)
  pat_idx = 0;
 if (pat_idx == 7)
  pat_idx = 3;

 return (pat_idx);
}
