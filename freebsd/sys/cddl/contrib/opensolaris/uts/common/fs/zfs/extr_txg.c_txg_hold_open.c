
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint64_t ;
struct TYPE_7__ {size_t th_txg; TYPE_3__* th_cpu; } ;
typedef TYPE_1__ txg_handle_t ;
struct TYPE_8__ {size_t tx_open_txg; TYPE_3__* tx_cpu; } ;
typedef TYPE_2__ tx_state_t ;
struct TYPE_9__ {int tc_lock; int * tc_count; int tc_open_lock; } ;
typedef TYPE_3__ tx_cpu_t ;
struct TYPE_10__ {TYPE_2__ dp_tx; } ;
typedef TYPE_4__ dsl_pool_t ;


 size_t CPU_SEQID ;
 size_t TXG_MASK ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

uint64_t
txg_hold_open(dsl_pool_t *dp, txg_handle_t *th)
{
 tx_state_t *tx = &dp->dp_tx;
 tx_cpu_t *tc = &tx->tx_cpu[CPU_SEQID];
 uint64_t txg;

 mutex_enter(&tc->tc_open_lock);
 txg = tx->tx_open_txg;

 mutex_enter(&tc->tc_lock);
 tc->tc_count[txg & TXG_MASK]++;
 mutex_exit(&tc->tc_lock);

 th->th_cpu = tc;
 th->th_txg = txg;

 return (txg);
}
