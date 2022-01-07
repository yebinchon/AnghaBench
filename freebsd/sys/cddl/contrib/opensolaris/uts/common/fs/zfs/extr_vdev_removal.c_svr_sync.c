
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__* svr_bytes_done; } ;
typedef TYPE_2__ spa_vdev_removal_t ;
struct TYPE_6__ {int sr_copied; } ;
struct TYPE_8__ {TYPE_1__ spa_removing_phys; TYPE_2__* spa_vdev_removal; } ;
typedef TYPE_3__ spa_t ;
typedef int dmu_tx_t ;


 int TXG_MASK ;
 int dmu_tx_get_txg (int *) ;
 int spa_sync_removing_state (TYPE_3__*,int *) ;

void
svr_sync(spa_t *spa, dmu_tx_t *tx)
{
 spa_vdev_removal_t *svr = spa->spa_vdev_removal;
 int txgoff = dmu_tx_get_txg(tx) & TXG_MASK;







 if (svr->svr_bytes_done[txgoff] == 0)
  return;




 spa->spa_removing_phys.sr_copied += svr->svr_bytes_done[txgoff];
 svr->svr_bytes_done[txgoff] = 0;

 spa_sync_removing_state(spa, tx);
}
