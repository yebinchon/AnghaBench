
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_21__ {int dl_lock; int dl_tree; TYPE_1__* dl_phys; int dl_os; int dl_dbuf; int dl_bpobj; scalar_t__ dl_oldfmt; } ;
typedef TYPE_2__ dsl_deadlist_t ;
struct TYPE_22__ {int dle_mintxg; } ;
typedef TYPE_3__ dsl_deadlist_entry_t ;
typedef int dmu_tx_t ;
struct TYPE_23__ {int blk_birth; } ;
typedef TYPE_4__ blkptr_t ;
typedef int avl_index_t ;
struct TYPE_20__ {int dl_uncomp; int dl_comp; int dl_used; } ;


 int AVL_BEFORE ;
 TYPE_3__* AVL_PREV (int *,TYPE_3__*) ;
 scalar_t__ BP_GET_PSIZE (TYPE_4__ const*) ;
 scalar_t__ BP_GET_UCSIZE (TYPE_4__ const*) ;
 TYPE_3__* avl_find (int *,TYPE_3__*,int *) ;
 TYPE_3__* avl_nearest (int *,int ,int ) ;
 scalar_t__ bp_get_dsize_sync (int ,TYPE_4__ const*) ;
 int bpobj_enqueue (int *,TYPE_4__ const*,int *) ;
 int dle_enqueue (TYPE_2__*,TYPE_3__*,TYPE_4__ const*,int *) ;
 int dmu_buf_will_dirty (int ,int *) ;
 int dmu_objset_spa (int ) ;
 int dsl_deadlist_load_tree (TYPE_2__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
dsl_deadlist_insert(dsl_deadlist_t *dl, const blkptr_t *bp, dmu_tx_t *tx)
{
 dsl_deadlist_entry_t dle_tofind;
 dsl_deadlist_entry_t *dle;
 avl_index_t where;

 if (dl->dl_oldfmt) {
  bpobj_enqueue(&dl->dl_bpobj, bp, tx);
  return;
 }

 mutex_enter(&dl->dl_lock);
 dsl_deadlist_load_tree(dl);

 dmu_buf_will_dirty(dl->dl_dbuf, tx);
 dl->dl_phys->dl_used +=
     bp_get_dsize_sync(dmu_objset_spa(dl->dl_os), bp);
 dl->dl_phys->dl_comp += BP_GET_PSIZE(bp);
 dl->dl_phys->dl_uncomp += BP_GET_UCSIZE(bp);

 dle_tofind.dle_mintxg = bp->blk_birth;
 dle = avl_find(&dl->dl_tree, &dle_tofind, &where);
 if (dle == ((void*)0))
  dle = avl_nearest(&dl->dl_tree, where, AVL_BEFORE);
 else
  dle = AVL_PREV(&dl->dl_tree, dle);
 dle_enqueue(dl, dle, bp, tx);
 mutex_exit(&dl->dl_lock);
}
