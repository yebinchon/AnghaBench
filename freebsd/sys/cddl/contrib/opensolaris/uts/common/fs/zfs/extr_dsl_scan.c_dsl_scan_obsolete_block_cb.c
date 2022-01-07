
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int dva_t ;
struct TYPE_7__ {int scn_visited_this_txg; TYPE_1__* scn_dp; } ;
typedef TYPE_2__ dsl_scan_t ;
typedef int dmu_tx_t ;
struct TYPE_8__ {int * blk_dva; } ;
typedef TYPE_3__ blkptr_t ;
struct TYPE_6__ {int dp_spa; } ;


 int DVA_GET_ASIZE (int const*) ;
 int DVA_GET_OFFSET (int const*) ;
 int DVA_GET_VDEV (int const*) ;
 int ERESTART ;
 int SET_ERROR (int ) ;
 scalar_t__ dsl_scan_async_block_should_pause (TYPE_2__*) ;
 int spa_vdev_indirect_mark_obsolete (int ,int ,int ,int ,int *) ;

__attribute__((used)) static int
dsl_scan_obsolete_block_cb(void *arg, const blkptr_t *bp, dmu_tx_t *tx)
{
 dsl_scan_t *scn = arg;
 const dva_t *dva = &bp->blk_dva[0];

 if (dsl_scan_async_block_should_pause(scn))
  return (SET_ERROR(ERESTART));

 spa_vdev_indirect_mark_obsolete(scn->scn_dp->dp_spa,
     DVA_GET_VDEV(dva), DVA_GET_OFFSET(dva),
     DVA_GET_ASIZE(dva), tx);
 scn->scn_visited_this_txg++;
 return (0);
}
