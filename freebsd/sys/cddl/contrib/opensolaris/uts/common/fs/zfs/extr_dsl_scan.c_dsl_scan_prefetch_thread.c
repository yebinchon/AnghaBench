
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int vdev_children; } ;
typedef TYPE_2__ vdev_t ;
typedef int uint64_t ;
struct TYPE_13__ {scalar_t__ spa_scrub_inflight; int spa_scrub_lock; int spa_scrub_io_cv; TYPE_2__* spa_root_vdev; } ;
typedef TYPE_3__ spa_t ;
struct TYPE_14__ {int spic_spc; int spic_zb; int spic_bp; } ;
typedef TYPE_4__ scan_prefetch_issue_ctx_t ;
struct TYPE_15__ {scalar_t__ scn_maxinflight_bytes; int scn_prefetch_queue; scalar_t__ scn_prefetch_stop; TYPE_1__* scn_dp; int scn_zio_root; } ;
typedef TYPE_5__ dsl_scan_t ;
typedef int arc_flags_t ;
struct TYPE_11__ {TYPE_3__* dp_spa; } ;


 int ARC_FLAG_NOWAIT ;
 int ARC_FLAG_PREFETCH ;
 int ARC_FLAG_PRESCIENT_PREFETCH ;
 int ASSERT (scalar_t__) ;
 int ASSERT0 (scalar_t__) ;
 scalar_t__ BP_GET_PSIZE (int *) ;
 int ZIO_FLAG_CANFAIL ;
 int ZIO_FLAG_SCAN_THREAD ;
 int ZIO_PRIORITY_SCRUB ;
 int arc_read (int ,TYPE_3__*,int *,int ,int ,int ,int,int*,int *) ;
 TYPE_4__* avl_first (int *) ;
 scalar_t__ avl_numnodes (int *) ;
 int avl_remove (int *,TYPE_4__*) ;
 int cv_wait (int *,int *) ;
 int dsl_scan_prefetch_cb ;
 int kmem_free (TYPE_4__*,int) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int scan_prefetch_ctx_rele (int ,TYPE_5__*) ;
 int zfs_top_maxinflight ;

__attribute__((used)) static void
dsl_scan_prefetch_thread(void *arg)
{
 dsl_scan_t *scn = arg;
 spa_t *spa = scn->scn_dp->dp_spa;
 vdev_t *rvd = spa->spa_root_vdev;
 uint64_t maxinflight = rvd->vdev_children * zfs_top_maxinflight;
 scan_prefetch_issue_ctx_t *spic;


 while (!scn->scn_prefetch_stop) {
  arc_flags_t flags = ARC_FLAG_NOWAIT |
                    ARC_FLAG_PRESCIENT_PREFETCH | ARC_FLAG_PREFETCH;
  int zio_flags = ZIO_FLAG_CANFAIL | ZIO_FLAG_SCAN_THREAD;

  mutex_enter(&spa->spa_scrub_lock);





  while (!scn->scn_prefetch_stop &&
      (avl_numnodes(&scn->scn_prefetch_queue) == 0 ||
      spa->spa_scrub_inflight >= scn->scn_maxinflight_bytes)) {
   cv_wait(&spa->spa_scrub_io_cv, &spa->spa_scrub_lock);
  }


  if (scn->scn_prefetch_stop) {
   mutex_exit(&spa->spa_scrub_lock);
   break;
  }


  spic = avl_first(&scn->scn_prefetch_queue);
  spa->spa_scrub_inflight += BP_GET_PSIZE(&spic->spic_bp);
  avl_remove(&scn->scn_prefetch_queue, spic);

  mutex_exit(&spa->spa_scrub_lock);


  (void) arc_read(scn->scn_zio_root, scn->scn_dp->dp_spa,
      &spic->spic_bp, dsl_scan_prefetch_cb, spic->spic_spc,
      ZIO_PRIORITY_SCRUB, zio_flags, &flags, &spic->spic_zb);

  kmem_free(spic, sizeof (scan_prefetch_issue_ctx_t));
 }

 ASSERT(scn->scn_prefetch_stop);


 mutex_enter(&spa->spa_scrub_lock);
 while ((spic = avl_first(&scn->scn_prefetch_queue)) != ((void*)0)) {
  avl_remove(&scn->scn_prefetch_queue, spic);
  scan_prefetch_ctx_rele(spic->spic_spc, scn);
  kmem_free(spic, sizeof (scan_prefetch_issue_ctx_t));
 }
 ASSERT0(avl_numnodes(&scn->scn_prefetch_queue));
 mutex_exit(&spa->spa_scrub_lock);
}
