
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_pooladdr {int dummy; } ;
struct pf_pool {int list; } ;


 struct pf_pooladdr* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct pf_pooladdr*,int ) ;
 int entries ;
 int free (struct pf_pooladdr*) ;

void
pfctl_clear_pool(struct pf_pool *pool)
{
 struct pf_pooladdr *pa;

 while ((pa = TAILQ_FIRST(&pool->list)) != ((void*)0)) {
  TAILQ_REMOVE(&pool->list, pa, entries);
  free(pa);
 }
}
