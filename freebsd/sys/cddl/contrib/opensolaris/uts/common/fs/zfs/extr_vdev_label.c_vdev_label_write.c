
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int io_spa; } ;
typedef TYPE_1__ zio_t ;
typedef int zio_done_func_t ;
struct TYPE_8__ {int vdev_psize; } ;
typedef TYPE_2__ vdev_t ;
typedef int uint64_t ;
typedef int abd_t ;


 int ASSERT (int) ;
 int B_TRUE ;
 int RW_READER ;
 int RW_WRITER ;
 int SCL_ALL ;
 int SCL_CONFIG ;
 int SCL_STATE ;
 int ZIO_CHECKSUM_LABEL ;
 int ZIO_FLAG_CONFIG_WRITER ;
 int ZIO_PRIORITY_SYNC_WRITE ;
 scalar_t__ dsl_pool_sync_context (int ) ;
 int spa_config_held (int ,int,int ) ;
 int spa_get_dsl (int ) ;
 int vdev_label_offset (int ,int,int ) ;
 int zio_nowait (int ) ;
 int zio_write_phys (TYPE_1__*,TYPE_2__*,int ,int ,int *,int ,int *,void*,int ,int,int ) ;

__attribute__((used)) static void
vdev_label_write(zio_t *zio, vdev_t *vd, int l, abd_t *buf, uint64_t offset,
    uint64_t size, zio_done_func_t *done, void *private, int flags)
{
 ASSERT(spa_config_held(zio->io_spa, SCL_ALL, RW_WRITER) == SCL_ALL ||
     (spa_config_held(zio->io_spa, SCL_CONFIG | SCL_STATE, RW_READER) ==
     (SCL_CONFIG | SCL_STATE) &&
     dsl_pool_sync_context(spa_get_dsl(zio->io_spa))));
 ASSERT(flags & ZIO_FLAG_CONFIG_WRITER);

 zio_nowait(zio_write_phys(zio, vd,
     vdev_label_offset(vd->vdev_psize, l, offset),
     size, buf, ZIO_CHECKSUM_LABEL, done, private,
     ZIO_PRIORITY_SYNC_WRITE, flags, B_TRUE));
}
