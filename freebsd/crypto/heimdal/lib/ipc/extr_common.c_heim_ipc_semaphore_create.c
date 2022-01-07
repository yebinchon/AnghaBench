
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* heim_isemaphore ;
struct TYPE_4__ {long counter; int cond; int mutex; } ;


 int HEIMDAL_MUTEX_init (int *) ;
 int dispatch_semaphore_create (long) ;
 int heim_assert (int ,char*) ;
 TYPE_1__* malloc (int) ;
 int pthread_cond_init (int *,int *) ;

heim_isemaphore
heim_ipc_semaphore_create(long value)
{



    heim_assert(0, "no semaphore support w/o pthreads");
    return ((void*)0);
}
