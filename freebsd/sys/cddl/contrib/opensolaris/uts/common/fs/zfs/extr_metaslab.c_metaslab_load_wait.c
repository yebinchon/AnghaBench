
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ms_lock; int ms_load_cv; int ms_loaded; scalar_t__ ms_loading; } ;
typedef TYPE_1__ metaslab_t ;


 int ASSERT (int) ;
 int MUTEX_HELD (int *) ;
 int cv_wait (int *,int *) ;

__attribute__((used)) static void
metaslab_load_wait(metaslab_t *msp)
{
 ASSERT(MUTEX_HELD(&msp->ms_lock));

 while (msp->ms_loading) {
  ASSERT(!msp->ms_loaded);
  cv_wait(&msp->ms_load_cv, &msp->ms_lock);
 }
}
