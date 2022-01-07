
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long long uint64_t ;
struct TYPE_3__ {scalar_t__ ms_max_size; unsigned long long ms_weight; } ;
typedef TYPE_1__ metaslab_t ;
typedef int boolean_t ;


 unsigned long long METASLAB_WEIGHT_TYPE ;
 int WEIGHT_GET_INDEX (unsigned long long) ;
 int WEIGHT_IS_SPACEBASED (unsigned long long) ;

boolean_t
metaslab_should_allocate(metaslab_t *msp, uint64_t asize)
{
 boolean_t should_allocate;

 if (msp->ms_max_size != 0)
  return (msp->ms_max_size >= asize);

 if (!WEIGHT_IS_SPACEBASED(msp->ms_weight)) {






  should_allocate = (asize <
      1ULL << (WEIGHT_GET_INDEX(msp->ms_weight) + 1));
 } else {
  should_allocate = (asize <=
      (msp->ms_weight & ~METASLAB_WEIGHT_TYPE));
 }
 return (should_allocate);
}
