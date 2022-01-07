
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int vdev_id; int vdev_children; TYPE_2__* vdev_spa; } ;
typedef TYPE_1__ vdev_t ;
typedef int uint64_t ;
struct TYPE_14__ {TYPE_1__* spa_root_vdev; } ;
typedef TYPE_2__ spa_t ;
typedef int boolean_t ;


 int ASSERT (int) ;
 int MUTEX_HELD (int *) ;
 int RW_WRITER ;
 scalar_t__ SCL_ALL ;
 scalar_t__ spa_config_held (TYPE_2__*,scalar_t__,int ) ;
 int spa_namespace_lock ;
 int vdev_add_child (TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* vdev_alloc_common (TYPE_2__*,int,int ,int *) ;
 int vdev_compact_children (TYPE_1__*) ;
 int vdev_config_dirty (TYPE_1__*) ;
 int vdev_free (TYPE_1__*) ;
 int vdev_hole_ops ;
 int vdev_reopen (TYPE_1__*) ;

__attribute__((used)) static void
vdev_remove_make_hole_and_free(vdev_t *vd)
{
 uint64_t id = vd->vdev_id;
 spa_t *spa = vd->vdev_spa;
 vdev_t *rvd = spa->spa_root_vdev;
 boolean_t last_vdev = (id == (rvd->vdev_children - 1));

 ASSERT(MUTEX_HELD(&spa_namespace_lock));
 ASSERT(spa_config_held(spa, SCL_ALL, RW_WRITER) == SCL_ALL);

 vdev_free(vd);

 if (last_vdev) {
  vdev_compact_children(rvd);
 } else {
  vd = vdev_alloc_common(spa, id, 0, &vdev_hole_ops);
  vdev_add_child(rvd, vd);
 }
 vdev_config_dirty(rvd);




 vdev_reopen(rvd);
}
