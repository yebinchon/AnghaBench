
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_barrier_combining_group {int k; int sense; int count; struct ck_barrier_combining_group* parent; } ;
struct ck_barrier_combining {int dummy; } ;


 int ck_pr_faa_uint (int *,int) ;
 int ck_pr_fence_memory () ;
 int ck_pr_fence_store () ;
 unsigned int ck_pr_load_uint (int *) ;
 int ck_pr_stall () ;
 int ck_pr_store_uint (int *,int ) ;

__attribute__((used)) static void
ck_barrier_combining_aux(struct ck_barrier_combining *barrier,
    struct ck_barrier_combining_group *tnode,
    unsigned int sense)
{





 if (ck_pr_faa_uint(&tnode->count, 1) == tnode->k - 1) {




  if (tnode->parent != ((void*)0))
   ck_barrier_combining_aux(barrier, tnode->parent, sense);
  ck_pr_store_uint(&tnode->count, 0);
  ck_pr_fence_store();
  ck_pr_store_uint(&tnode->sense, ~tnode->sense);
 } else {
  while (sense != ck_pr_load_uint(&tnode->sense))
   ck_pr_stall();
 }
 ck_pr_fence_memory();

 return;
}
