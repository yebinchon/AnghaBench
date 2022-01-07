
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {size_t vdev_asize; int * vdev_ops; } ;
typedef TYPE_2__ vdev_t ;
typedef size_t uint64_t ;
struct TYPE_8__ {TYPE_1__* spa_root_vdev; } ;
typedef TYPE_3__ spa_t ;
typedef int dva_t ;
typedef int boolean_t ;
typedef int blkptr_t ;
struct TYPE_6__ {size_t vdev_children; TYPE_2__** vdev_child; } ;


 scalar_t__ BP_IS_GANG (int const*) ;
 int B_FALSE ;
 int B_TRUE ;
 size_t DVA_GET_ASIZE (int const*) ;
 size_t DVA_GET_OFFSET (int const*) ;
 size_t DVA_GET_VDEV (int const*) ;
 int SPA_GANGBLOCKSIZE ;
 int vdev_hole_ops ;
 int vdev_missing_ops ;
 size_t vdev_psize_to_asize (TYPE_2__*,int ) ;

boolean_t
zfs_dva_valid(spa_t *spa, const dva_t *dva, const blkptr_t *bp)
{
 uint64_t vdevid = DVA_GET_VDEV(dva);

 if (vdevid >= spa->spa_root_vdev->vdev_children)
  return (B_FALSE);

 vdev_t *vd = spa->spa_root_vdev->vdev_child[vdevid];
 if (vd == ((void*)0))
  return (B_FALSE);

 if (vd->vdev_ops == &vdev_hole_ops)
  return (B_FALSE);

 if (vd->vdev_ops == &vdev_missing_ops) {
  return (B_FALSE);
 }

 uint64_t offset = DVA_GET_OFFSET(dva);
 uint64_t asize = DVA_GET_ASIZE(dva);

 if (BP_IS_GANG(bp))
  asize = vdev_psize_to_asize(vd, SPA_GANGBLOCKSIZE);
 if (offset + asize > vd->vdev_asize)
  return (B_FALSE);

 return (B_TRUE);
}
