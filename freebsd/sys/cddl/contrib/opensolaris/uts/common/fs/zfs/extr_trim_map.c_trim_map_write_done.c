
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__* avl_child; } ;
struct TYPE_8__ {TYPE_7__ io_trim_node; TYPE_2__* io_vd; } ;
typedef TYPE_1__ zio_t ;
struct TYPE_9__ {TYPE_3__* vdev_trimmap; } ;
typedef TYPE_2__ vdev_t ;
struct TYPE_11__ {TYPE_7__* avl_root; } ;
struct TYPE_10__ {int tm_lock; TYPE_5__ tm_inflight_writes; } ;
typedef TYPE_3__ trim_map_t ;


 scalar_t__ AVL_XPARENT (TYPE_7__*) ;
 int avl_remove (TYPE_5__*,TYPE_1__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int zfs_trim_enabled ;

void
trim_map_write_done(zio_t *zio)
{
 vdev_t *vd = zio->io_vd;
 trim_map_t *tm = vd->vdev_trimmap;





 if (!zfs_trim_enabled || tm == ((void*)0))
  return;

 mutex_enter(&tm->tm_lock);




 if (zio->io_trim_node.avl_child[0] ||
     zio->io_trim_node.avl_child[1] ||
     AVL_XPARENT(&zio->io_trim_node) ||
     tm->tm_inflight_writes.avl_root == &zio->io_trim_node)
  avl_remove(&tm->tm_inflight_writes, zio);
 mutex_exit(&tm->tm_lock);
}
