
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_16__ {int vdev_children; scalar_t__ vdev_resilver_txg; int vdev_nparity; int vdev_dtl_lock; int * vdev_dtl; struct TYPE_16__** vdev_child; int vdev_top; TYPE_1__* vdev_ops; scalar_t__ vdev_aux; TYPE_5__* vdev_spa; } ;
typedef TYPE_4__ vdev_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_17__ {scalar_t__ spa_scrub_started; TYPE_2__* spa_dsl_pool; TYPE_4__* spa_root_vdev; } ;
typedef TYPE_5__ spa_t ;
struct TYPE_15__ {scalar_t__ scn_errors; } ;
struct TYPE_18__ {TYPE_3__ scn_phys; } ;
typedef TYPE_6__ dsl_scan_t ;
typedef int avl_tree_t ;
struct TYPE_14__ {TYPE_6__* dp_scan; } ;
struct TYPE_13__ {scalar_t__ vdev_op_leaf; } ;


 int ASSERT (int) ;
 size_t DTL_MISSING ;
 size_t DTL_OUTAGE ;
 size_t DTL_PARTIAL ;
 size_t DTL_SCRUB ;
 int DTL_TYPES ;
 int RW_READER ;
 int SCL_ALL ;
 int VDD_DTL ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int range_tree_add (int ,int ,unsigned long long) ;
 scalar_t__ range_tree_is_empty (int ) ;
 int range_tree_vacate (int ,int *,int *) ;
 int range_tree_walk (int ,int (*) (int ,int ,unsigned long long),int ) ;
 scalar_t__ spa_config_held (TYPE_5__*,int ,int ) ;
 int space_reftree_add_map (int *,int ,int) ;
 int space_reftree_add_seg (int *,int ,scalar_t__,int) ;
 int space_reftree_create (int *) ;
 int space_reftree_destroy (int *) ;
 int space_reftree_generate_map (int *,int ,int) ;
 int vdev_config_dirty (int ) ;
 int vdev_dirty (int ,int ,TYPE_4__*,scalar_t__) ;
 scalar_t__ vdev_dtl_should_excise (TYPE_4__*) ;
 int vdev_is_concrete (TYPE_4__*) ;
 int vdev_readable (TYPE_4__*) ;

void
vdev_dtl_reassess(vdev_t *vd, uint64_t txg, uint64_t scrub_txg, int scrub_done)
{
 spa_t *spa = vd->vdev_spa;
 avl_tree_t reftree;
 int minref;

 ASSERT(spa_config_held(spa, SCL_ALL, RW_READER) != 0);

 for (int c = 0; c < vd->vdev_children; c++)
  vdev_dtl_reassess(vd->vdev_child[c], txg,
      scrub_txg, scrub_done);

 if (vd == spa->spa_root_vdev || !vdev_is_concrete(vd) || vd->vdev_aux)
  return;

 if (vd->vdev_ops->vdev_op_leaf) {
  dsl_scan_t *scn = spa->spa_dsl_pool->dp_scan;

  mutex_enter(&vd->vdev_dtl_lock);







  if (scrub_txg != 0 &&
      (spa->spa_scrub_started ||
      (scn != ((void*)0) && scn->scn_phys.scn_errors == 0)) &&
      vdev_dtl_should_excise(vd)) {
   space_reftree_create(&reftree);
   space_reftree_add_map(&reftree,
       vd->vdev_dtl[DTL_MISSING], 1);
   space_reftree_add_seg(&reftree, 0, scrub_txg, -1);
   space_reftree_add_map(&reftree,
       vd->vdev_dtl[DTL_SCRUB], 2);
   space_reftree_generate_map(&reftree,
       vd->vdev_dtl[DTL_MISSING], 1);
   space_reftree_destroy(&reftree);
  }
  range_tree_vacate(vd->vdev_dtl[DTL_PARTIAL], ((void*)0), ((void*)0));
  range_tree_walk(vd->vdev_dtl[DTL_MISSING],
      range_tree_add, vd->vdev_dtl[DTL_PARTIAL]);
  if (scrub_done)
   range_tree_vacate(vd->vdev_dtl[DTL_SCRUB], ((void*)0), ((void*)0));
  range_tree_vacate(vd->vdev_dtl[DTL_OUTAGE], ((void*)0), ((void*)0));
  if (!vdev_readable(vd))
   range_tree_add(vd->vdev_dtl[DTL_OUTAGE], 0, -1ULL);
  else
   range_tree_walk(vd->vdev_dtl[DTL_MISSING],
       range_tree_add, vd->vdev_dtl[DTL_OUTAGE]);






  if (vd->vdev_resilver_txg != 0 &&
      range_tree_is_empty(vd->vdev_dtl[DTL_MISSING]) &&
      range_tree_is_empty(vd->vdev_dtl[DTL_OUTAGE])) {
   vd->vdev_resilver_txg = 0;
   vdev_config_dirty(vd->vdev_top);
  }

  mutex_exit(&vd->vdev_dtl_lock);

  if (txg != 0)
   vdev_dirty(vd->vdev_top, VDD_DTL, vd, txg);
  return;
 }

 mutex_enter(&vd->vdev_dtl_lock);
 for (int t = 0; t < DTL_TYPES; t++) {

  int s = (t == DTL_MISSING) ? DTL_OUTAGE: t;
  if (t == DTL_SCRUB)
   continue;
  if (t == DTL_PARTIAL)
   minref = 1;
  else if (vd->vdev_nparity != 0)
   minref = vd->vdev_nparity + 1;
  else
   minref = vd->vdev_children;
  space_reftree_create(&reftree);
  for (int c = 0; c < vd->vdev_children; c++) {
   vdev_t *cvd = vd->vdev_child[c];
   mutex_enter(&cvd->vdev_dtl_lock);
   space_reftree_add_map(&reftree, cvd->vdev_dtl[s], 1);
   mutex_exit(&cvd->vdev_dtl_lock);
  }
  space_reftree_generate_map(&reftree, vd->vdev_dtl[t], minref);
  space_reftree_destroy(&reftree);
 }
 mutex_exit(&vd->vdev_dtl_lock);
}
