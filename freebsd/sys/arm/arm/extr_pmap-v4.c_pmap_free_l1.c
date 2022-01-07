
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct l1_ttable {scalar_t__ l1_domain_use_count; int* l1_domain_free; int l1_domain_first; } ;
typedef TYPE_1__* pmap_t ;
struct TYPE_3__ {int pm_domain; struct l1_ttable* pm_l1; } ;


 scalar_t__ PMAP_DOMAINS ;
 int TAILQ_INSERT_HEAD (int *,struct l1_ttable*,int ) ;
 int TAILQ_INSERT_TAIL (int *,struct l1_ttable*,int ) ;
 int TAILQ_REMOVE (int *,struct l1_ttable*,int ) ;
 int l1_lru ;
 int l1_lru_list ;
 int l1_lru_lock ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
pmap_free_l1(pmap_t pm)
{
 struct l1_ttable *l1 = pm->pm_l1;

 mtx_lock(&l1_lru_lock);




 if (l1->l1_domain_use_count < PMAP_DOMAINS)
  TAILQ_REMOVE(&l1_lru_list, l1, l1_lru);




 l1->l1_domain_free[pm->pm_domain - 1] = l1->l1_domain_first;
 l1->l1_domain_first = pm->pm_domain - 1;
 l1->l1_domain_use_count--;







 if (l1->l1_domain_use_count == 0) {
  TAILQ_INSERT_HEAD(&l1_lru_list, l1, l1_lru);
 } else
  TAILQ_INSERT_TAIL(&l1_lru_list, l1, l1_lru);

 mtx_unlock(&l1_lru_lock);
}
