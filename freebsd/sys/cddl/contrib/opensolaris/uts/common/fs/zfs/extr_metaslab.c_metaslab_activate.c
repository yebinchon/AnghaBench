
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_6__ {int ms_weight; int ms_activation_weight; int ms_loaded; int ms_group; int ms_lock; } ;
typedef TYPE_1__ metaslab_t ;


 int ASSERT (int) ;
 int EBUSY ;
 int METASLAB_ACTIVE_MASK ;
 int MUTEX_HELD (int *) ;
 int metaslab_activate_allocator (int ,TYPE_1__*,int,int) ;
 int metaslab_group_sort (int ,TYPE_1__*,int) ;
 int metaslab_load (TYPE_1__*) ;

__attribute__((used)) static int
metaslab_activate(metaslab_t *msp, int allocator, uint64_t activation_weight)
{
 ASSERT(MUTEX_HELD(&msp->ms_lock));

 if ((msp->ms_weight & METASLAB_ACTIVE_MASK) == 0) {
  int error = metaslab_load(msp);
  if (error != 0) {
   metaslab_group_sort(msp->ms_group, msp, 0);
   return (error);
  }
  if ((msp->ms_weight & METASLAB_ACTIVE_MASK) != 0) {




   return (EBUSY);
  }
  if ((error = metaslab_activate_allocator(msp->ms_group, msp,
      allocator, activation_weight)) != 0) {
   return (error);
  }

  msp->ms_activation_weight = msp->ms_weight;
  metaslab_group_sort(msp->ms_group, msp,
      msp->ms_weight | activation_weight);
 }
 ASSERT(msp->ms_loaded);
 ASSERT(msp->ms_weight & METASLAB_ACTIVE_MASK);

 return (0);
}
