
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_barrier_mcs {int parentsense; int dummy; int ** children; int * childnotready; int * parent; int * havechild; int tid; } ;


 int ck_pr_store_uint (int *,int ) ;

void
ck_barrier_mcs_init(struct ck_barrier_mcs *barrier, unsigned int nthr)
{
 unsigned int i, j;

 ck_pr_store_uint(&barrier->tid, 0);

 for (i = 0; i < nthr; ++i) {
  for (j = 0; j < 4; ++j) {




   barrier[i].havechild[j] = ((i << 2) + j < nthr - 1) ? ~0 : 0;





   barrier[i].childnotready[j] = barrier[i].havechild[j];
  }


  barrier[i].parent = (i == 0) ?
      &barrier[i].dummy :
      &barrier[(i - 1) >> 2].childnotready[(i - 1) & 3];


  barrier[i].children[0] = ((i << 1) + 1 >= nthr) ?
      &barrier[i].dummy :
      &barrier[(i << 1) + 1].parentsense;

  barrier[i].children[1] = ((i << 1) + 2 >= nthr) ?
      &barrier[i].dummy :
      &barrier[(i << 1) + 2].parentsense;

  barrier[i].parentsense = 0;
 }

 return;
}
