
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmap_kernel_map_range {int attrs; } ;
typedef int pt_entry_t ;


 int X86_PG_G ;
 int X86_PG_PDE_CACHE ;
 int X86_PG_PDE_PAT ;
 int X86_PG_RW ;
 int X86_PG_U ;
 int kernel_pmap ;
 int pg_nx ;
 scalar_t__ pmap_pat_index (int ,int,int) ;

__attribute__((used)) static bool
sysctl_kmaps_match(struct pmap_kernel_map_range *range, pt_entry_t attrs)
{
 pt_entry_t diff, mask;

 mask = X86_PG_G | X86_PG_RW | X86_PG_U | X86_PG_PDE_CACHE | pg_nx;
 diff = (range->attrs ^ attrs) & mask;
 if (diff == 0)
  return (1);
 if ((diff & ~X86_PG_PDE_PAT) == 0 &&
     pmap_pat_index(kernel_pmap, range->attrs, 1) ==
     pmap_pat_index(kernel_pmap, attrs, 1))
  return (1);
 return (0);
}
