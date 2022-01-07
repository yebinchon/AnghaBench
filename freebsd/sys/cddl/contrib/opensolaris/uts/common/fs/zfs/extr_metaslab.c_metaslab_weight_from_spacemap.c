
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_7__ {TYPE_2__* ms_sm; } ;
typedef TYPE_3__ metaslab_t ;
struct TYPE_6__ {scalar_t__ sm_shift; TYPE_1__* sm_phys; } ;
struct TYPE_5__ {scalar_t__* smp_histogram; } ;


 int SPACE_MAP_HISTOGRAM_SIZE ;
 int WEIGHT_SET_ACTIVE (int ,int ) ;
 int WEIGHT_SET_COUNT (int ,scalar_t__) ;
 int WEIGHT_SET_INDEX (int ,scalar_t__) ;

__attribute__((used)) static uint64_t
metaslab_weight_from_spacemap(metaslab_t *msp)
{
 uint64_t weight = 0;

 for (int i = SPACE_MAP_HISTOGRAM_SIZE - 1; i >= 0; i--) {
  if (msp->ms_sm->sm_phys->smp_histogram[i] != 0) {
   WEIGHT_SET_COUNT(weight,
       msp->ms_sm->sm_phys->smp_histogram[i]);
   WEIGHT_SET_INDEX(weight, i +
       msp->ms_sm->sm_shift);
   WEIGHT_SET_ACTIVE(weight, 0);
   break;
  }
 }
 return (weight);
}
