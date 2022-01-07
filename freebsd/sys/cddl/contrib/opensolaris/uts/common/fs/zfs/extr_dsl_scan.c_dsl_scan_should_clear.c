
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int vdev_children; int vdev_scan_io_queue_lock; TYPE_4__* vdev_scan_io_queue; struct TYPE_8__** vdev_child; } ;
typedef TYPE_2__ vdev_t ;
typedef int uint64_t ;
typedef int scan_io_t ;
typedef int range_seg_t ;
typedef int longlong_t ;
struct TYPE_9__ {int scn_clearing; int scn_bytes_pending; TYPE_1__* scn_dp; } ;
typedef TYPE_3__ dsl_scan_t ;
struct TYPE_10__ {int q_sios_by_addr; int q_exts_by_size; } ;
typedef TYPE_4__ dsl_scan_io_queue_t ;
typedef int boolean_t ;
struct TYPE_11__ {TYPE_2__* spa_root_vdev; } ;
struct TYPE_7__ {TYPE_5__* dp_spa; } ;


 int ASSERT0 (int ) ;
 int B_FALSE ;
 int B_TRUE ;
 int MAX (int,int ) ;
 int MIN (int,int) ;
 int PAGESIZE ;
 int avl_numnodes (int *) ;
 int dprintf (char*,int ) ;
 int metaslab_class_get_alloc (int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int physmem ;
 int spa_normal_class (TYPE_5__*) ;
 int zfs_scan_mem_lim_fact ;
 int zfs_scan_mem_lim_min ;
 int zfs_scan_mem_lim_soft_fact ;
 int zfs_scan_mem_lim_soft_max ;

__attribute__((used)) static boolean_t
dsl_scan_should_clear(dsl_scan_t *scn)
{
 vdev_t *rvd = scn->scn_dp->dp_spa->spa_root_vdev;
 uint64_t mlim_hard, mlim_soft, mused;
 uint64_t alloc = metaslab_class_get_alloc(spa_normal_class(
     scn->scn_dp->dp_spa));

 mlim_hard = MAX((physmem / zfs_scan_mem_lim_fact) * PAGESIZE,
     zfs_scan_mem_lim_min);
 mlim_hard = MIN(mlim_hard, alloc / 20);
 mlim_soft = mlim_hard - MIN(mlim_hard / zfs_scan_mem_lim_soft_fact,
     zfs_scan_mem_lim_soft_max);
 mused = 0;
 for (uint64_t i = 0; i < rvd->vdev_children; i++) {
  vdev_t *tvd = rvd->vdev_child[i];
  dsl_scan_io_queue_t *queue;

  mutex_enter(&tvd->vdev_scan_io_queue_lock);
  queue = tvd->vdev_scan_io_queue;
  if (queue != ((void*)0)) {

   mused += avl_numnodes(&queue->q_exts_by_size) *
       sizeof (range_seg_t) +
       avl_numnodes(&queue->q_sios_by_addr) *
       sizeof (scan_io_t);
  }
  mutex_exit(&tvd->vdev_scan_io_queue_lock);
 }

 dprintf("current scan memory usage: %llu bytes\n", (longlong_t)mused);

 if (mused == 0)
  ASSERT0(scn->scn_bytes_pending);






 if (mused >= mlim_hard)
  return (B_TRUE);
 else if (mused < mlim_soft)
  return (B_FALSE);
 else
  return (scn->scn_clearing);
}
