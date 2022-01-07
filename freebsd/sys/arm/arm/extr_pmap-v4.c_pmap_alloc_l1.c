
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_int8_t ;
struct l1_ttable {size_t l1_domain_first; size_t* l1_domain_free; scalar_t__ l1_domain_use_count; } ;
typedef TYPE_1__* pmap_t ;
struct TYPE_3__ {size_t pm_domain; struct l1_ttable* pm_l1; } ;


 scalar_t__ PMAP_DOMAINS ;
 struct l1_ttable* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct l1_ttable*,int ) ;
 int TAILQ_REMOVE (int *,struct l1_ttable*,int ) ;
 int l1_lru ;
 int l1_lru_list ;
 int l1_lru_lock ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
pmap_alloc_l1(pmap_t pm)
{
 struct l1_ttable *l1;
 u_int8_t domain;




 mtx_lock(&l1_lru_lock);
 l1 = TAILQ_FIRST(&l1_lru_list);
 TAILQ_REMOVE(&l1_lru_list, l1, l1_lru);





 domain = l1->l1_domain_first;
 l1->l1_domain_first = l1->l1_domain_free[domain];





 if (++l1->l1_domain_use_count < PMAP_DOMAINS)
  TAILQ_INSERT_TAIL(&l1_lru_list, l1, l1_lru);

 mtx_unlock(&l1_lru_lock);




 pm->pm_l1 = l1;
 pm->pm_domain = domain + 1;
}
