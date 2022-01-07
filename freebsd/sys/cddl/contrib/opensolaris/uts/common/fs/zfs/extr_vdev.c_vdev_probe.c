
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_20__ {int io_flags; } ;
typedef TYPE_2__ zio_t ;
struct TYPE_21__ {int vdev_psize; int vdev_probe_lock; int vdev_probe_wanted; TYPE_2__* vdev_probe_zio; void* vdev_cant_write; void* vdev_cant_read; TYPE_1__* vdev_ops; int * vdev_spa; } ;
typedef TYPE_3__ vdev_t ;
struct TYPE_22__ {int vps_flags; } ;
typedef TYPE_4__ vdev_probe_stats_t ;
typedef int spa_t ;
struct TYPE_19__ {int vdev_op_leaf; } ;


 int ASSERT (int ) ;
 void* B_FALSE ;
 int B_TRUE ;
 int KM_SLEEP ;
 int RW_WRITER ;
 int SCL_ZIO ;
 int SPA_ASYNC_PROBE ;
 int VDEV_LABELS ;
 int VDEV_PAD_SIZE ;
 int ZIO_CHECKSUM_OFF ;
 int ZIO_FLAG_CANFAIL ;
 int ZIO_FLAG_CONFIG_WRITER ;
 int ZIO_FLAG_DONT_AGGREGATE ;
 int ZIO_FLAG_DONT_CACHE ;
 int ZIO_FLAG_DONT_PROPAGATE ;
 int ZIO_FLAG_PROBE ;
 int ZIO_FLAG_TRYHARD ;
 int ZIO_PRIORITY_SYNC_READ ;
 int abd_alloc_for_io (int ,int ) ;
 TYPE_4__* kmem_zalloc (int,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int offsetof (int ,int ) ;
 int spa_async_request (int *,int ) ;
 scalar_t__ spa_config_held (int *,int ,int ) ;
 int vdev_label_offset (int ,int,int ) ;
 int vdev_label_t ;
 int vdev_probe_done ;
 int vl_pad2 ;
 int zio_add_child (TYPE_2__*,TYPE_2__*) ;
 int zio_nowait (TYPE_2__*) ;
 TYPE_2__* zio_null (int *,int *,TYPE_3__*,int ,TYPE_4__*,int) ;
 TYPE_2__* zio_read_phys (TYPE_2__*,TYPE_3__*,int ,int ,int ,int ,int ,TYPE_4__*,int ,int,int ) ;

zio_t *
vdev_probe(vdev_t *vd, zio_t *zio)
{
 spa_t *spa = vd->vdev_spa;
 vdev_probe_stats_t *vps = ((void*)0);
 zio_t *pio;

 ASSERT(vd->vdev_ops->vdev_op_leaf);




 if (zio && (zio->io_flags & ZIO_FLAG_PROBE))
  return (((void*)0));






 mutex_enter(&vd->vdev_probe_lock);

 if ((pio = vd->vdev_probe_zio) == ((void*)0)) {
  vps = kmem_zalloc(sizeof (*vps), KM_SLEEP);

  vps->vps_flags = ZIO_FLAG_CANFAIL | ZIO_FLAG_PROBE |
      ZIO_FLAG_DONT_CACHE | ZIO_FLAG_DONT_AGGREGATE |
      ZIO_FLAG_TRYHARD;

  if (spa_config_held(spa, SCL_ZIO, RW_WRITER)) {
   vps->vps_flags |= ZIO_FLAG_CONFIG_WRITER;
   vd->vdev_cant_read = B_FALSE;
   vd->vdev_cant_write = B_FALSE;
  }

  vd->vdev_probe_zio = pio = zio_null(((void*)0), spa, vd,
      vdev_probe_done, vps,
      vps->vps_flags | ZIO_FLAG_DONT_PROPAGATE);





  if (zio != ((void*)0)) {
   vd->vdev_probe_wanted = B_TRUE;
   spa_async_request(spa, SPA_ASYNC_PROBE);
  }
 }

 if (zio != ((void*)0))
  zio_add_child(zio, pio);

 mutex_exit(&vd->vdev_probe_lock);

 if (vps == ((void*)0)) {
  ASSERT(zio != ((void*)0));
  return (((void*)0));
 }

 for (int l = 1; l < VDEV_LABELS; l++) {
  zio_nowait(zio_read_phys(pio, vd,
      vdev_label_offset(vd->vdev_psize, l,
      offsetof(vdev_label_t, vl_pad2)), VDEV_PAD_SIZE,
      abd_alloc_for_io(VDEV_PAD_SIZE, B_TRUE),
      ZIO_CHECKSUM_OFF, vdev_probe_done, vps,
      ZIO_PRIORITY_SYNC_READ, vps->vps_flags, B_TRUE));
 }

 if (zio == ((void*)0))
  return (pio);

 zio_nowait(pio);
 return (((void*)0));
}
