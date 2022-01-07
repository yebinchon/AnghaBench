
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zio_type_t ;
typedef int zio_t ;
typedef int zio_priority_t ;
typedef int zio_done_func_t ;
struct TYPE_6__ {int vdev_spa; TYPE_1__* vdev_ops; } ;
typedef TYPE_2__ vdev_t ;
typedef int uint64_t ;
typedef enum zio_flag { ____Placeholder_zio_flag } zio_flag ;
typedef int abd_t ;
struct TYPE_5__ {int vdev_op_leaf; } ;


 int ASSERT (int ) ;
 int ZIO_FLAG_CANFAIL ;
 int ZIO_FLAG_DELEGATED ;
 int ZIO_FLAG_DONT_RETRY ;
 int ZIO_STAGE_VDEV_IO_START ;
 int ZIO_VDEV_CHILD_PIPELINE ;
 int * zio_create (int *,int ,int ,int *,int *,int ,int ,int *,void*,int ,int ,int,TYPE_2__*,int ,int *,int,int ) ;

zio_t *
zio_vdev_delegated_io(vdev_t *vd, uint64_t offset, abd_t *data, uint64_t size,
    zio_type_t type, zio_priority_t priority, enum zio_flag flags,
    zio_done_func_t *done, void *private)
{
 zio_t *zio;

 ASSERT(vd->vdev_ops->vdev_op_leaf);

 zio = zio_create(((void*)0), vd->vdev_spa, 0, ((void*)0),
     data, size, size, done, private, type, priority,
     flags | ZIO_FLAG_CANFAIL | ZIO_FLAG_DONT_RETRY | ZIO_FLAG_DELEGATED,
     vd, offset, ((void*)0),
     ZIO_STAGE_VDEV_IO_START >> 1, ZIO_VDEV_CHILD_PIPELINE);

 return (zio);
}
