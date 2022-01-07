
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ms_max_size; int ms_weight; int ms_loaded; int ms_allocatable; int ms_lock; } ;
typedef TYPE_1__ metaslab_t ;


 int ASSERT (int ) ;
 int B_FALSE ;
 int METASLAB_ACTIVE_MASK ;
 int MUTEX_HELD (int *) ;
 int range_tree_vacate (int ,int *,int *) ;

void
metaslab_unload(metaslab_t *msp)
{
 ASSERT(MUTEX_HELD(&msp->ms_lock));
 range_tree_vacate(msp->ms_allocatable, ((void*)0), ((void*)0));
 msp->ms_loaded = B_FALSE;
 msp->ms_weight &= ~METASLAB_ACTIVE_MASK;
 msp->ms_max_size = 0;
}
