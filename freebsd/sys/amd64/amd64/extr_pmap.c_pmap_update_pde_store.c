
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pmap_t ;
typedef int pd_entry_t ;
struct TYPE_3__ {int pm_type; int pm_eptgen; } ;





 int atomic_add_acq_long (int *,int) ;
 int panic (char*,int) ;
 int pde_store (int *,int ) ;

__attribute__((used)) static void
pmap_update_pde_store(pmap_t pmap, pd_entry_t *pde, pd_entry_t newpde)
{

 switch (pmap->pm_type) {
 case 128:
  break;
 case 129:
 case 130:
  atomic_add_acq_long(&pmap->pm_eptgen, 1);
  break;
 default:
  panic("pmap_update_pde_store: bad pm_type %d", pmap->pm_type);
 }
 pde_store(pde, newpde);
}
