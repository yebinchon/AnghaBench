
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int zl_os; } ;
typedef TYPE_1__ zilog_t ;
typedef int zil_commit_waiter_t ;
typedef int lr_t ;
struct TYPE_8__ {int * itx_private; int itx_sync; } ;
typedef TYPE_2__ itx_t ;
typedef int dmu_tx_t ;


 int B_TRUE ;
 int TXG_WAIT ;
 int TX_COMMIT ;
 int VERIFY0 (int ) ;
 int dmu_tx_assign (int *,int ) ;
 int dmu_tx_commit (int *) ;
 int * dmu_tx_create (int ) ;
 int zil_itx_assign (TYPE_1__*,TYPE_2__*,int *) ;
 TYPE_2__* zil_itx_create (int ,int) ;

__attribute__((used)) static void
zil_commit_itx_assign(zilog_t *zilog, zil_commit_waiter_t *zcw)
{
 dmu_tx_t *tx = dmu_tx_create(zilog->zl_os);
 VERIFY0(dmu_tx_assign(tx, TXG_WAIT));

 itx_t *itx = zil_itx_create(TX_COMMIT, sizeof (lr_t));
 itx->itx_sync = B_TRUE;
 itx->itx_private = zcw;

 zil_itx_assign(zilog, itx, tx);

 dmu_tx_commit(tx);
}
