
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ time_t ;
struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
typedef TYPE_1__* heim_isemaphore ;
typedef int dispatch_semaphore_t ;
struct TYPE_3__ {scalar_t__ counter; int mutex; int cond; } ;


 int DISPATCH_TIME_FOREVER ;
 int HEIMDAL_MUTEX_lock (int *) ;
 int HEIMDAL_MUTEX_unlock (int *) ;
 scalar_t__ HEIM_IPC_WAIT_FOREVER ;
 int NSEC_PER_SEC ;
 long dispatch_semaphore_wait (int ,int) ;
 long errno ;
 int heim_assert (int ,char*) ;
 int pthread_cond_timedwait (int *,int *,struct timespec*) ;
 int pthread_cond_wait (int *,int *) ;

long
heim_ipc_semaphore_wait(heim_isemaphore s, time_t t)
{
    heim_assert(0, "no semaphore support w/o pthreads");
    return 0;
}
