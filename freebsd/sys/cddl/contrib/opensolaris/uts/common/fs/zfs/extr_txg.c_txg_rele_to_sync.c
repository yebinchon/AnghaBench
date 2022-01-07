
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int th_txg; TYPE_2__* th_cpu; } ;
typedef TYPE_1__ txg_handle_t ;
struct TYPE_5__ {scalar_t__* tc_count; int tc_lock; int * tc_cv; } ;
typedef TYPE_2__ tx_cpu_t ;


 int ASSERT (int) ;
 int TXG_MASK ;
 int cv_broadcast (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
txg_rele_to_sync(txg_handle_t *th)
{
 tx_cpu_t *tc = th->th_cpu;
 int g = th->th_txg & TXG_MASK;

 mutex_enter(&tc->tc_lock);
 ASSERT(tc->tc_count[g] != 0);
 if (--tc->tc_count[g] == 0)
  cv_broadcast(&tc->tc_cv[g]);
 mutex_exit(&tc->tc_lock);

 th->th_cpu = ((void*)0);
}
