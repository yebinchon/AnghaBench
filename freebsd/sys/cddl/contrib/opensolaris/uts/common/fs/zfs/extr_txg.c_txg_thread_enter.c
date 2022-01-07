
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tx_sync_lock; } ;
typedef TYPE_1__ tx_state_t ;
typedef int callb_cpr_t ;


 int CALLB_CPR_INIT (int *,int *,int ,int ) ;
 int FTAG ;
 int callb_generic_cpr ;
 int mutex_enter (int *) ;

__attribute__((used)) static void
txg_thread_enter(tx_state_t *tx, callb_cpr_t *cpr)
{
 CALLB_CPR_INIT(cpr, &tx->tx_sync_lock, callb_generic_cpr, FTAG);
 mutex_enter(&tx->tx_sync_lock);
}
