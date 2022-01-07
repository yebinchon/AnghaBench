
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_offset_t ;
struct l1_ttable {int* l1_domain_free; int l1_physaddr; scalar_t__ l1_domain_first; scalar_t__ l1_domain_use_count; int * l1_kva; } ;
typedef int pd_entry_t ;
struct TYPE_5__ {TYPE_1__* pm_l1; } ;
struct TYPE_4__ {int * l1_kva; } ;


 int L1_TABLE_SIZE ;
 int PMAP_DOMAINS ;
 int SLIST_INSERT_HEAD (int *,struct l1_ttable*,int ) ;
 int TAILQ_INSERT_TAIL (int *,struct l1_ttable*,int ) ;
 TYPE_2__* kernel_pmap ;
 int l1_link ;
 int l1_list ;
 int l1_lru ;
 int l1_lru_list ;
 int memcpy (int *,int *,int ) ;
 int panic (char*,int *) ;
 int pmap_extract (TYPE_2__*,int ) ;

__attribute__((used)) static void
pmap_init_l1(struct l1_ttable *l1, pd_entry_t *l1pt)
{
 int i;

 l1->l1_kva = l1pt;
 l1->l1_domain_use_count = 0;
 l1->l1_domain_first = 0;

 for (i = 0; i < PMAP_DOMAINS; i++)
  l1->l1_domain_free[i] = i + 1;




 if (l1pt != kernel_pmap->pm_l1->l1_kva)
  memcpy(l1pt, kernel_pmap->pm_l1->l1_kva, L1_TABLE_SIZE);

 if ((l1->l1_physaddr = pmap_extract(kernel_pmap, (vm_offset_t)l1pt)) == 0)
  panic("pmap_init_l1: can't get PA of L1 at %p", l1pt);
 SLIST_INSERT_HEAD(&l1_list, l1, l1_link);
 TAILQ_INSERT_TAIL(&l1_lru_list, l1, l1_lru);
}
