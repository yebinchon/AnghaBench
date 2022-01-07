
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* heim_isemaphore ;
typedef int dispatch_semaphore_t ;
struct TYPE_3__ {scalar_t__ counter; int cond; int mutex; } ;


 long EINVAL ;
 int HEIMDAL_MUTEX_lock (int *) ;
 int HEIMDAL_MUTEX_unlock (int *) ;
 long dispatch_semaphore_signal (int ) ;
 int heim_assert (int ,char*) ;
 int pthread_cond_signal (int *) ;

long
heim_ipc_semaphore_signal(heim_isemaphore s)
{



    heim_assert(0, "no semaphore support w/o pthreads");
    return EINVAL;
}
