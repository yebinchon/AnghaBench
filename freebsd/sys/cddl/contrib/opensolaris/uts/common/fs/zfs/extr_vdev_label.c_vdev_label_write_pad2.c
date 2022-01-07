
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zio_t ;
struct TYPE_7__ {TYPE_1__* vdev_ops; int * vdev_spa; } ;
typedef TYPE_2__ vdev_t ;
typedef int spa_t ;
typedef int abd_t ;
struct TYPE_6__ {int vdev_op_leaf; } ;


 int ASSERT (int) ;
 int B_TRUE ;
 int EINVAL ;
 int ENODEV ;
 int ENXIO ;
 int RW_WRITER ;
 scalar_t__ SCL_ALL ;
 size_t VDEV_PAD_SIZE ;
 int ZIO_FLAG_CANFAIL ;
 int ZIO_FLAG_CONFIG_WRITER ;
 int ZIO_FLAG_TRYHARD ;
 int * abd_alloc_for_io (size_t,int ) ;
 int abd_copy_from_buf (int *,char const*,size_t) ;
 int abd_free (int *) ;
 int abd_zero (int *,size_t) ;
 int offsetof (int ,int ) ;
 scalar_t__ spa_config_held (int *,scalar_t__,int ) ;
 scalar_t__ vdev_is_dead (TYPE_2__*) ;
 int vdev_label_t ;
 int vdev_label_write (int *,TYPE_2__*,int ,int *,int ,size_t,int *,int *,int) ;
 int vl_pad2 ;
 int * zio_root (int *,int *,int *,int) ;
 int zio_wait (int *) ;

int
vdev_label_write_pad2(vdev_t *vd, const char *buf, size_t size)
{
 spa_t *spa = vd->vdev_spa;
 zio_t *zio;
 abd_t *pad2;
 int flags = ZIO_FLAG_CONFIG_WRITER | ZIO_FLAG_CANFAIL;
 int error;

 if (size > VDEV_PAD_SIZE)
  return (EINVAL);

 if (!vd->vdev_ops->vdev_op_leaf)
  return (ENODEV);
 if (vdev_is_dead(vd))
  return (ENXIO);

 ASSERT(spa_config_held(spa, SCL_ALL, RW_WRITER) == SCL_ALL);

 pad2 = abd_alloc_for_io(VDEV_PAD_SIZE, B_TRUE);
 abd_zero(pad2, VDEV_PAD_SIZE);
 abd_copy_from_buf(pad2, buf, size);

retry:
 zio = zio_root(spa, ((void*)0), ((void*)0), flags);
 vdev_label_write(zio, vd, 0, pad2,
     offsetof(vdev_label_t, vl_pad2),
     VDEV_PAD_SIZE, ((void*)0), ((void*)0), flags);
 error = zio_wait(zio);
 if (error != 0 && !(flags & ZIO_FLAG_TRYHARD)) {
  flags |= ZIO_FLAG_TRYHARD;
  goto retry;
 }

 abd_free(pad2);
 return (error);
}
