
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int th_txg; TYPE_2__* th_cpu; } ;
typedef TYPE_1__ txg_handle_t ;
struct TYPE_5__ {int tc_lock; int * tc_callbacks; } ;
typedef TYPE_2__ tx_cpu_t ;
typedef int list_t ;


 int TXG_MASK ;
 int list_move_tail (int *,int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
txg_register_callbacks(txg_handle_t *th, list_t *tx_callbacks)
{
 tx_cpu_t *tc = th->th_cpu;
 int g = th->th_txg & TXG_MASK;

 mutex_enter(&tc->tc_lock);
 list_move_tail(&tc->tc_callbacks[g], tx_callbacks);
 mutex_exit(&tc->tc_lock);
}
