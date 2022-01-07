
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_4__ {scalar_t__ ms_weight; int ms_group; scalar_t__ ms_activation_weight; int ms_allocatable; } ;
typedef TYPE_1__ metaslab_t ;


 int ASSERT (int) ;
 int ASSERT0 (scalar_t__) ;
 scalar_t__ METASLAB_ACTIVE_MASK ;
 scalar_t__ METASLAB_WEIGHT_TYPE ;
 scalar_t__ SPA_MINBLOCKSIZE ;
 int metaslab_passivate_allocator (int ,TYPE_1__*,scalar_t__) ;
 scalar_t__ range_tree_is_empty (int ) ;

__attribute__((used)) static void
metaslab_passivate(metaslab_t *msp, uint64_t weight)
{
 uint64_t size = weight & ~METASLAB_WEIGHT_TYPE;






 ASSERT(size >= SPA_MINBLOCKSIZE ||
     range_tree_is_empty(msp->ms_allocatable));
 ASSERT0(weight & METASLAB_ACTIVE_MASK);

 msp->ms_activation_weight = 0;
 metaslab_passivate_allocator(msp->ms_group, msp, weight);
 ASSERT((msp->ms_weight & METASLAB_ACTIVE_MASK) == 0);
}
