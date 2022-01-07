
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vdev_ashift; unsigned long long vdev_asize; int vdev_spa; } ;
typedef TYPE_1__ vdev_t ;
typedef int uint64_t ;
typedef int boolean_t ;


 int B_TRUE ;
 int SM_OFFSET_BITS ;
 int SPA_FEATURE_SPACEMAP_V2 ;
 scalar_t__ spa_feature_is_active (int ,int ) ;

boolean_t
vdev_is_spacemap_addressable(vdev_t *vd)
{
 if (spa_feature_is_active(vd->vdev_spa, SPA_FEATURE_SPACEMAP_V2))
  return (B_TRUE);
 uint64_t shift = vd->vdev_ashift + SM_OFFSET_BITS;

 if (shift >= 63)
  return (B_TRUE);

 return (vd->vdev_asize < (1ULL << shift));
}
