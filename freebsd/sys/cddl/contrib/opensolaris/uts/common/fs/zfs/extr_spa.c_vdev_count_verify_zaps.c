
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t vdev_children; struct TYPE_4__** vdev_child; int vdev_leaf_zap; int vdev_top_zap; TYPE_2__* vdev_spa; } ;
typedef TYPE_1__ vdev_t ;
typedef size_t uint64_t ;
struct TYPE_5__ {int spa_all_vdev_zaps; int spa_meta_objset; } ;
typedef TYPE_2__ spa_t ;


 int ASSERT0 (int ) ;
 int zap_lookup_int (int ,int ,int ) ;

__attribute__((used)) static uint64_t
vdev_count_verify_zaps(vdev_t *vd)
{
 spa_t *spa = vd->vdev_spa;
 uint64_t total = 0;
 if (vd->vdev_top_zap != 0) {
  total++;
  ASSERT0(zap_lookup_int(spa->spa_meta_objset,
      spa->spa_all_vdev_zaps, vd->vdev_top_zap));
 }
 if (vd->vdev_leaf_zap != 0) {
  total++;
  ASSERT0(zap_lookup_int(spa->spa_meta_objset,
      spa->spa_all_vdev_zaps, vd->vdev_leaf_zap));
 }

 for (uint64_t i = 0; i < vd->vdev_children; i++) {
  total += vdev_count_verify_zaps(vd->vdev_child[i]);
 }

 return (total);
}
