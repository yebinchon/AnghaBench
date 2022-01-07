
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int scn_visited_this_txg; TYPE_2__* scn_dp; int scn_zio_root; int scn_is_bptree; } ;
typedef TYPE_3__ dsl_scan_t ;
struct TYPE_12__ {TYPE_1__* tx_pool; } ;
typedef TYPE_4__ dmu_tx_t ;
typedef int blkptr_t ;
struct TYPE_10__ {int dp_spa; } ;
struct TYPE_9__ {int dp_free_dir; } ;


 scalar_t__ BP_GET_LEVEL (int const*) ;
 int BP_GET_PSIZE (int const*) ;
 scalar_t__ BP_GET_TYPE (int const*) ;
 int BP_GET_UCSIZE (int const*) ;
 int DD_USED_HEAD ;
 scalar_t__ DMU_OT_OBJSET ;
 int ERESTART ;
 int SET_ERROR (int ) ;
 int bp_get_dsize_sync (int ,int const*) ;
 int dmu_tx_get_txg (TYPE_4__*) ;
 int dsl_dir_diduse_space (int ,int ,int ,int ,int ,TYPE_4__*) ;
 scalar_t__ dsl_scan_async_block_should_pause (TYPE_3__*) ;
 int zio_free_sync (int ,int ,int ,int const*,int ,int ) ;
 int zio_nowait (int ) ;

__attribute__((used)) static int
dsl_scan_free_block_cb(void *arg, const blkptr_t *bp, dmu_tx_t *tx)
{
 dsl_scan_t *scn = arg;

 if (!scn->scn_is_bptree ||
     (BP_GET_LEVEL(bp) == 0 && BP_GET_TYPE(bp) != DMU_OT_OBJSET)) {
  if (dsl_scan_async_block_should_pause(scn))
   return (SET_ERROR(ERESTART));
 }

 zio_nowait(zio_free_sync(scn->scn_zio_root, scn->scn_dp->dp_spa,
     dmu_tx_get_txg(tx), bp, BP_GET_PSIZE(bp), 0));
 dsl_dir_diduse_space(tx->tx_pool->dp_free_dir, DD_USED_HEAD,
     -bp_get_dsize_sync(scn->scn_dp->dp_spa, bp),
     -BP_GET_PSIZE(bp), -BP_GET_UCSIZE(bp), tx);
 scn->scn_visited_this_txg++;
 return (0);
}
