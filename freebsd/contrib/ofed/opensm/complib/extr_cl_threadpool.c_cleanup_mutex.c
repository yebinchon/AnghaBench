
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mutex; } ;
typedef TYPE_1__ cl_thread_pool_t ;


 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void cleanup_mutex(void *arg)
{
 pthread_mutex_unlock(&((cl_thread_pool_t *) arg)->mutex);
}
