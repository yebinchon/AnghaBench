
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_7__ {int ms_lock; } ;
typedef TYPE_1__ metaslab_t ;
struct TYPE_8__ {int mg_lock; } ;
typedef TYPE_2__ metaslab_group_t ;


 int ASSERT (int) ;
 int MUTEX_HELD (int *) ;
 scalar_t__ SPA_MINBLOCKSIZE ;
 int metaslab_group_sort_impl (TYPE_2__*,TYPE_1__*,scalar_t__) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

__attribute__((used)) static void
metaslab_group_sort(metaslab_group_t *mg, metaslab_t *msp, uint64_t weight)
{




 ASSERT(weight >= SPA_MINBLOCKSIZE || weight == 0);
 ASSERT(MUTEX_HELD(&msp->ms_lock));

 mutex_enter(&mg->mg_lock);
 metaslab_group_sort_impl(mg, msp, weight);
 mutex_exit(&mg->mg_lock);
}
