
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int svr_cv; int svr_lock; int svr_allocd_segs; int * svr_new_segments; int * svr_frees; int * svr_max_offset_to_sync; int * svr_bytes_done; } ;
typedef TYPE_1__ spa_vdev_removal_t ;


 int ASSERT0 (int ) ;
 int TXG_SIZE ;
 int cv_destroy (int *) ;
 int kmem_free (TYPE_1__*,int) ;
 int list_destroy (int *) ;
 int mutex_destroy (int *) ;
 int range_tree_destroy (int ) ;

void
spa_vdev_removal_destroy(spa_vdev_removal_t *svr)
{
 for (int i = 0; i < TXG_SIZE; i++) {
  ASSERT0(svr->svr_bytes_done[i]);
  ASSERT0(svr->svr_max_offset_to_sync[i]);
  range_tree_destroy(svr->svr_frees[i]);
  list_destroy(&svr->svr_new_segments[i]);
 }

 range_tree_destroy(svr->svr_allocd_segs);
 mutex_destroy(&svr->svr_lock);
 cv_destroy(&svr->svr_cv);
 kmem_free(svr, sizeof (*svr));
}
