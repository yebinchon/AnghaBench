
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* heim_isemaphore ;
typedef int dispatch_semaphore_t ;
struct TYPE_4__ {scalar_t__ counter; int cond; int mutex; } ;


 int HEIMDAL_MUTEX_destroy (int *) ;
 int HEIMDAL_MUTEX_lock (int *) ;
 int HEIMDAL_MUTEX_unlock (int *) ;
 int abort () ;
 int dispatch_release (int ) ;
 int free (TYPE_1__*) ;
 int heim_assert (int ,char*) ;
 int pthread_cond_destroy (int *) ;

void
heim_ipc_semaphore_release(heim_isemaphore s)
{



    heim_assert(0, "no semaphore support w/o pthreads");
}
