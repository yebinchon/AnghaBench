
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ ms_initializing; int ms_lock; TYPE_2__* ms_group; } ;
typedef TYPE_1__ metaslab_t ;
struct TYPE_7__ {int mg_ms_initialize_lock; int mg_ms_initialize_cv; int mg_initialize_updating; } ;
typedef TYPE_2__ metaslab_group_t ;


 int ASSERT (int) ;
 int B_FALSE ;
 int B_TRUE ;
 int MUTEX_HELD (int *) ;
 int cv_broadcast (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int vdev_initialize_mg_mark (TYPE_2__*) ;
 int vdev_initialize_mg_wait (TYPE_2__*) ;

__attribute__((used)) static void
vdev_initialize_ms_mark(metaslab_t *msp)
{
 ASSERT(!MUTEX_HELD(&msp->ms_lock));
 metaslab_group_t *mg = msp->ms_group;

 mutex_enter(&mg->mg_ms_initialize_lock);
 vdev_initialize_mg_wait(mg);
 mg->mg_initialize_updating = B_TRUE;
 if (msp->ms_initializing == 0) {
  vdev_initialize_mg_mark(mg);
 }
 mutex_enter(&msp->ms_lock);
 msp->ms_initializing++;
 mutex_exit(&msp->ms_lock);

 mg->mg_initialize_updating = B_FALSE;
 cv_broadcast(&mg->mg_ms_initialize_cv);
 mutex_exit(&mg->mg_ms_initialize_lock);
}
