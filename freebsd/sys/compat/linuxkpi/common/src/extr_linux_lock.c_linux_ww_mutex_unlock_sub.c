
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sx; } ;
struct ww_mutex {int condvar; TYPE_1__ base; } ;


 int cv_signal (int *) ;
 int linux_ww_lock () ;
 int linux_ww_unlock () ;
 int sx_xunlock (int *) ;

void
linux_ww_mutex_unlock_sub(struct ww_mutex *lock)
{

 linux_ww_lock();
 sx_xunlock(&lock->base.sx);

 cv_signal(&lock->condvar);
 linux_ww_unlock();
}
