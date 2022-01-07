
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_pooladdr {int dummy; } ;
struct pf_pool {int list; } ;


 struct pf_pooladdr* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct pf_pooladdr*,int ) ;
 int TAILQ_REMOVE (int *,struct pf_pooladdr*,int ) ;
 int entries ;

void
pfctl_move_pool(struct pf_pool *src, struct pf_pool *dst)
{
 struct pf_pooladdr *pa;

 while ((pa = TAILQ_FIRST(&src->list)) != ((void*)0)) {
  TAILQ_REMOVE(&src->list, pa, entries);
  TAILQ_INSERT_TAIL(&dst->list, pa, entries);
 }
}
