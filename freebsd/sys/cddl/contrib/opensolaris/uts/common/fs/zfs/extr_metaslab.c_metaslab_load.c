
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ms_load_cv; scalar_t__ ms_loading; scalar_t__ ms_loaded; int ms_lock; } ;
typedef TYPE_1__ metaslab_t ;


 int ASSERT (int ) ;
 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int MUTEX_HELD (int *) ;
 int VERIFY (int) ;
 int cv_broadcast (int *) ;
 int metaslab_load_impl (TYPE_1__*) ;
 int metaslab_load_wait (TYPE_1__*) ;

int
metaslab_load(metaslab_t *msp)
{
 ASSERT(MUTEX_HELD(&msp->ms_lock));





 metaslab_load_wait(msp);
 if (msp->ms_loaded)
  return (0);
 VERIFY(!msp->ms_loading);

 msp->ms_loading = B_TRUE;
 int error = metaslab_load_impl(msp);
 msp->ms_loading = B_FALSE;
 cv_broadcast(&msp->ms_load_cv);

 return (error);
}
