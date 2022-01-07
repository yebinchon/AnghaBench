
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int io_priority; int io_type; int io_abd; TYPE_2__* io_vsd; } ;
typedef TYPE_1__ zio_t ;
struct TYPE_12__ {int iv_reconstruct; int iv_splits; } ;
typedef TYPE_2__ indirect_vsd_t ;
struct TYPE_13__ {int is_children; int is_size; int is_target_offset; TYPE_4__* is_child; } ;
typedef TYPE_3__ indirect_split_t ;
struct TYPE_14__ {int ic_data; int ic_vdev; int * ic_duplicate; } ;
typedef TYPE_4__ indirect_child_t ;


 int B_TRUE ;
 int abd_alloc_sametype (int ,int ) ;
 TYPE_3__* list_head (int *) ;
 TYPE_3__* list_next (int *,TYPE_3__*) ;
 int vdev_indirect_read_split_done ;
 int vdev_readable (int ) ;
 int zio_nowait (int ) ;
 int zio_vdev_child_io (TYPE_1__*,int *,int ,int ,int ,int ,int ,int ,int ,int ,TYPE_4__*) ;

__attribute__((used)) static void
vdev_indirect_read_all(zio_t *zio)
{
 indirect_vsd_t *iv = zio->io_vsd;

 for (indirect_split_t *is = list_head(&iv->iv_splits);
     is != ((void*)0); is = list_next(&iv->iv_splits, is)) {
  for (int i = 0; i < is->is_children; i++) {
   indirect_child_t *ic = &is->is_child[i];

   if (!vdev_readable(ic->ic_vdev))
    continue;
   ic->ic_data = abd_alloc_sametype(zio->io_abd,
       is->is_size);
   ic->ic_duplicate = ((void*)0);

   zio_nowait(zio_vdev_child_io(zio, ((void*)0),
       ic->ic_vdev, is->is_target_offset, ic->ic_data,
       is->is_size, zio->io_type, zio->io_priority, 0,
       vdev_indirect_read_split_done, ic));
  }
 }
 iv->iv_reconstruct = B_TRUE;
}
