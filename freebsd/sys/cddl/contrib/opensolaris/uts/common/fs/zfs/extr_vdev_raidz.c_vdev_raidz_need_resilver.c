
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t vdev_children; size_t vdev_nparity; struct TYPE_6__** vdev_child; TYPE_1__* vdev_top; } ;
typedef TYPE_2__ vdev_t ;
typedef size_t uint64_t ;
typedef int boolean_t ;
struct TYPE_5__ {size_t vdev_ashift; } ;


 int B_FALSE ;
 int B_TRUE ;
 int DTL_PARTIAL ;
 int vdev_dtl_empty (TYPE_2__*,int ) ;

__attribute__((used)) static boolean_t
vdev_raidz_need_resilver(vdev_t *vd, uint64_t offset, size_t psize)
{
 uint64_t dcols = vd->vdev_children;
 uint64_t nparity = vd->vdev_nparity;
 uint64_t ashift = vd->vdev_top->vdev_ashift;

 uint64_t b = offset >> ashift;

 uint64_t s = ((psize - 1) >> ashift) + 1;

 uint64_t f = b % dcols;

 if (s + nparity >= dcols)
  return (B_TRUE);

 for (uint64_t c = 0; c < s + nparity; c++) {
  uint64_t devidx = (f + c) % dcols;
  vdev_t *cvd = vd->vdev_child[devidx];






  if (!vdev_dtl_empty(cvd, DTL_PARTIAL))
   return (B_TRUE);
 }

 return (B_FALSE);
}
