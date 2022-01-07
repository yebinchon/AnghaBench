
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ vdev_notrim; TYPE_2__* vdev_trimmap; } ;
typedef TYPE_1__ vdev_t ;
typedef int uint64_t ;
struct TYPE_7__ {int tm_lock; } ;
typedef TYPE_2__ trim_map_t ;


 int TRIM_ZIO_END (TYPE_1__*,int ,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int trim_map_free_locked (TYPE_2__*,int ,int ,int ) ;
 int zfs_trim_enabled ;

void
trim_map_free(vdev_t *vd, uint64_t offset, uint64_t size, uint64_t txg)
{
 trim_map_t *tm = vd->vdev_trimmap;

 if (!zfs_trim_enabled || vd->vdev_notrim || tm == ((void*)0))
  return;

 mutex_enter(&tm->tm_lock);
 trim_map_free_locked(tm, offset, TRIM_ZIO_END(vd, offset, size), txg);
 mutex_exit(&tm->tm_lock);
}
