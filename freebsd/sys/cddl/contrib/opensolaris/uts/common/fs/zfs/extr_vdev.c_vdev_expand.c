
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int vdev_asize; int vdev_ms_shift; int vdev_ms_count; int vdev_spa; struct TYPE_7__* vdev_top; } ;
typedef TYPE_1__ vdev_t ;
typedef int uint64_t ;


 int ASSERT (int) ;
 int RW_WRITER ;
 scalar_t__ SCL_ALL ;
 int VERIFY (int) ;
 scalar_t__ spa_config_held (int ,scalar_t__,int ) ;
 int vdev_config_dirty (TYPE_1__*) ;
 int vdev_is_concrete (TYPE_1__*) ;
 scalar_t__ vdev_metaslab_init (TYPE_1__*,int ) ;
 int vdev_set_deflate_ratio (TYPE_1__*) ;

void
vdev_expand(vdev_t *vd, uint64_t txg)
{
 ASSERT(vd->vdev_top == vd);
 ASSERT(spa_config_held(vd->vdev_spa, SCL_ALL, RW_WRITER) == SCL_ALL);
 ASSERT(vdev_is_concrete(vd));

 vdev_set_deflate_ratio(vd);

 if ((vd->vdev_asize >> vd->vdev_ms_shift) > vd->vdev_ms_count) {
  VERIFY(vdev_metaslab_init(vd, txg) == 0);
  vdev_config_dirty(vd);
 }
}
