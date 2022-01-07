
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


struct TYPE_14__ {int io_flags; int io_spa; TYPE_4__* io_vsd; } ;
typedef TYPE_2__ zio_t ;
struct TYPE_13__ {int vs_checksum_errors; } ;
struct TYPE_15__ {int vdev_stat_lock; TYPE_1__ vdev_stat; } ;
typedef TYPE_3__ vdev_t ;
struct TYPE_16__ {int iv_splits; } ;
typedef TYPE_4__ indirect_vsd_t ;
struct TYPE_17__ {int is_children; int is_size; int is_target_offset; TYPE_6__* is_child; } ;
typedef TYPE_5__ indirect_split_t ;
struct TYPE_18__ {TYPE_3__* ic_vdev; int * ic_data; } ;
typedef TYPE_6__ indirect_child_t ;


 int ZIO_FLAG_SPECULATIVE ;
 TYPE_5__* list_head (int *) ;
 TYPE_5__* list_next (int *,TYPE_5__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int zfs_ereport_post_checksum (int ,TYPE_3__*,TYPE_2__*,int ,int ,int *,int *,int *) ;

__attribute__((used)) static void
vdev_indirect_all_checksum_errors(zio_t *zio)
{
 indirect_vsd_t *iv = zio->io_vsd;

 if (zio->io_flags & ZIO_FLAG_SPECULATIVE)
  return;

 for (indirect_split_t *is = list_head(&iv->iv_splits);
     is != ((void*)0); is = list_next(&iv->iv_splits, is)) {
  for (int c = 0; c < is->is_children; c++) {
   indirect_child_t *ic = &is->is_child[c];

   if (ic->ic_data == ((void*)0))
    continue;

   vdev_t *vd = ic->ic_vdev;

   mutex_enter(&vd->vdev_stat_lock);
   vd->vdev_stat.vs_checksum_errors++;
   mutex_exit(&vd->vdev_stat_lock);

   zfs_ereport_post_checksum(zio->io_spa, vd, zio,
       is->is_target_offset, is->is_size,
       ((void*)0), ((void*)0), ((void*)0));
  }
 }
}
