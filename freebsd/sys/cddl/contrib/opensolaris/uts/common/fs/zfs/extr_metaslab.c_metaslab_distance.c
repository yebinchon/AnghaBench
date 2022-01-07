
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef unsigned long long uint64_t ;
struct TYPE_7__ {unsigned long long ms_id; TYPE_2__* ms_group; } ;
typedef TYPE_3__ metaslab_t ;
typedef int dva_t ;
struct TYPE_6__ {TYPE_1__* mg_vd; } ;
struct TYPE_5__ {unsigned long long vdev_ms_shift; scalar_t__ vdev_id; } ;


 unsigned long long DVA_GET_OFFSET (int *) ;
 scalar_t__ DVA_GET_VDEV (int *) ;

__attribute__((used)) static uint64_t
metaslab_distance(metaslab_t *msp, dva_t *dva)
{
 uint64_t ms_shift = msp->ms_group->mg_vd->vdev_ms_shift;
 uint64_t offset = DVA_GET_OFFSET(dva) >> ms_shift;
 uint64_t start = msp->ms_id;

 if (msp->ms_group->mg_vd->vdev_id != DVA_GET_VDEV(dva))
  return (1ULL << 63);

 if (offset < start)
  return ((start - offset) << ms_shift);
 if (offset > start)
  return ((offset - start) << ms_shift);
 return (0);
}
