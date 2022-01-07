
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zio_t ;
struct TYPE_6__ {TYPE_1__* vdev_ops; } ;
typedef TYPE_2__ vdev_t ;
typedef int uint64_t ;
typedef int spa_t ;
struct TYPE_5__ {int vdev_op_leaf; } ;


 int ASSERT (int ) ;
 int ZIO_FLAG_CANFAIL ;
 int ZIO_FLAG_DONT_AGGREGATE ;
 int ZIO_FLAG_DONT_PROPAGATE ;
 int ZIO_FLAG_DONT_RETRY ;
 int ZIO_FREE_PHYS_PIPELINE ;
 int ZIO_PRIORITY_TRIM ;
 int ZIO_STAGE_OPEN ;
 int ZIO_TYPE_FREE ;
 int * zio_create (int *,int *,int ,int *,int *,int ,int ,int *,int *,int ,int ,int,TYPE_2__*,int ,int *,int ,int ) ;

zio_t *
zio_trim(zio_t *zio, spa_t *spa, vdev_t *vd, uint64_t offset, uint64_t size)
{

 ASSERT(vd->vdev_ops->vdev_op_leaf);

 return (zio_create(zio, spa, 0, ((void*)0), ((void*)0), size, size, ((void*)0), ((void*)0),
     ZIO_TYPE_FREE, ZIO_PRIORITY_TRIM, ZIO_FLAG_DONT_AGGREGATE |
     ZIO_FLAG_CANFAIL | ZIO_FLAG_DONT_PROPAGATE | ZIO_FLAG_DONT_RETRY,
     vd, offset, ((void*)0), ZIO_STAGE_OPEN, ZIO_FREE_PHYS_PIPELINE));
}
