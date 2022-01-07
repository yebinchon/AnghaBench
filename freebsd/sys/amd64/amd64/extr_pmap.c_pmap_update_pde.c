
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef TYPE_2__* pmap_t ;
typedef int pd_entry_t ;
struct TYPE_9__ {TYPE_1__* pm_pcids; } ;
struct TYPE_8__ {scalar_t__ pm_gen; } ;


 TYPE_2__* PCPU_GET (int ) ;
 int curpmap ;
 TYPE_2__* kernel_pmap ;
 int pmap_update_pde_invalidate (TYPE_2__*,int ,int ) ;
 int pmap_update_pde_store (TYPE_2__*,int *,int ) ;

__attribute__((used)) static void
pmap_update_pde(pmap_t pmap, vm_offset_t va, pd_entry_t *pde, pd_entry_t newpde)
{

 pmap_update_pde_store(pmap, pde, newpde);
 if (pmap == kernel_pmap || pmap == PCPU_GET(curpmap))
  pmap_update_pde_invalidate(pmap, va, newpde);
 else
  pmap->pm_pcids[0].pm_gen = 0;
}
