
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_barrier_dissemination_flag {scalar_t__ tflag; scalar_t__* pflag; } ;
struct ck_barrier_dissemination {unsigned int nthr; unsigned int size; struct ck_barrier_dissemination_flag** flags; int tid; } ;


 unsigned int ck_internal_log (int ) ;
 int ck_internal_power_2 (unsigned int) ;
 int ck_pr_store_uint (int *,int ) ;

void
ck_barrier_dissemination_init(struct ck_barrier_dissemination *barrier,
    struct ck_barrier_dissemination_flag **barrier_internal,
    unsigned int nthr)
{
 unsigned int i, j, k, size, offset;
 bool p = nthr & (nthr - 1);

 barrier->nthr = nthr;
 barrier->size = size = ck_internal_log(ck_internal_power_2(nthr));
 ck_pr_store_uint(&barrier->tid, 0);

 for (i = 0; i < nthr; ++i) {
  barrier[i].flags[0] = barrier_internal[i];
  barrier[i].flags[1] = barrier_internal[i] + size;
 }

 for (i = 0; i < nthr; ++i) {
  for (k = 0, offset = 1; k < size; ++k, offset <<= 1) {







   if (p == 0)
    j = (i + offset) & (nthr - 1);
   else
    j = (i + offset) % nthr;


   barrier[i].flags[0][k].pflag = &barrier[j].flags[0][k].tflag;
   barrier[i].flags[1][k].pflag = &barrier[j].flags[1][k].tflag;


   barrier[i].flags[0][k].tflag = barrier[i].flags[1][k].tflag = 0;
  }
 }

 return;
}
