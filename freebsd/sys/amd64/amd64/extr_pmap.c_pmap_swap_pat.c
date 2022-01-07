
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pt_entry_t ;
typedef TYPE_1__* pmap_t ;
struct TYPE_3__ {int pm_type; } ;


 int KASSERT (int,char*) ;



 int X86_PG_PDE_PAT ;
 int X86_PG_PTE_PAT ;
 int panic (char*,int) ;

__attribute__((used)) static pt_entry_t
pmap_swap_pat(pmap_t pmap, pt_entry_t entry)
{
 int x86_pat_bits = X86_PG_PTE_PAT | X86_PG_PDE_PAT;

 switch (pmap->pm_type) {
 case 128:
 case 129:

  KASSERT((entry & x86_pat_bits) != x86_pat_bits,
      ("Invalid PAT bits in entry %#lx", entry));


  if ((entry & x86_pat_bits) != 0)
   entry ^= x86_pat_bits;
  break;
 case 130:




  break;
 default:
  panic("pmap_switch_pat_bits: bad pm_type %d", pmap->pm_type);
 }

 return (entry);
}
