
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ms_initializing; int ms_lock; TYPE_2__* ms_group; } ;
typedef TYPE_1__ metaslab_t ;
struct TYPE_5__ {int mg_ms_initialize_lock; int mg_ms_initialize_cv; int mg_ms_initializing; } ;
typedef TYPE_2__ metaslab_group_t ;


 int ASSERT (int) ;
 int MUTEX_HELD (int *) ;
 int cv_broadcast (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

__attribute__((used)) static void
vdev_initialize_ms_unmark(metaslab_t *msp)
{
 ASSERT(!MUTEX_HELD(&msp->ms_lock));
 metaslab_group_t *mg = msp->ms_group;
 mutex_enter(&mg->mg_ms_initialize_lock);
 mutex_enter(&msp->ms_lock);
 if (--msp->ms_initializing == 0) {
  mg->mg_ms_initializing--;
  cv_broadcast(&mg->mg_ms_initialize_cv);
 }
 mutex_exit(&msp->ms_lock);
 mutex_exit(&mg->mg_ms_initialize_lock);
}
