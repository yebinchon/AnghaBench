
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {int io_flags; int io_spa; } ;
typedef TYPE_3__ zio_t ;
struct TYPE_17__ {int member_0; } ;
typedef TYPE_4__ zio_bad_cksum_t ;
struct TYPE_14__ {int vs_checksum_errors; } ;
struct TYPE_18__ {int vdev_stat_lock; TYPE_1__ vdev_stat; } ;
typedef TYPE_5__ vdev_t ;
struct TYPE_19__ {int is_size; int is_target_offset; TYPE_2__* is_good_child; } ;
typedef TYPE_6__ indirect_split_t ;
struct TYPE_20__ {int * ic_data; TYPE_5__* ic_vdev; } ;
typedef TYPE_7__ indirect_child_t ;
typedef int abd_t ;
struct TYPE_15__ {int * ic_data; } ;


 int ZIO_FLAG_SPECULATIVE ;
 void* abd_borrow_buf_copy (int *,int ) ;
 int abd_return_buf (int *,void*,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int zfs_ereport_post_checksum (int ,TYPE_5__*,TYPE_3__*,int ,int ,void*,void*,TYPE_4__*) ;

__attribute__((used)) static void
vdev_indirect_checksum_error(zio_t *zio,
    indirect_split_t *is, indirect_child_t *ic)
{
 vdev_t *vd = ic->ic_vdev;

 if (zio->io_flags & ZIO_FLAG_SPECULATIVE)
  return;

 mutex_enter(&vd->vdev_stat_lock);
 vd->vdev_stat.vs_checksum_errors++;
 mutex_exit(&vd->vdev_stat_lock);

 zio_bad_cksum_t zbc = { 0 };
 void *bad_buf = abd_borrow_buf_copy(ic->ic_data, is->is_size);
 abd_t *good_abd = is->is_good_child->ic_data;
 void *good_buf = abd_borrow_buf_copy(good_abd, is->is_size);
 zfs_ereport_post_checksum(zio->io_spa, vd, zio,
     is->is_target_offset, is->is_size, good_buf, bad_buf, &zbc);
 abd_return_buf(ic->ic_data, bad_buf, is->is_size);
 abd_return_buf(good_abd, good_buf, is->is_size);
}
