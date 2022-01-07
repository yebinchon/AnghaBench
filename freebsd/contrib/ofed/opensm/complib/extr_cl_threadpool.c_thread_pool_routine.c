
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int context; int (* pfn_callback ) (int ) ;int events; int mutex; int cond; } ;
typedef TYPE_1__ cl_thread_pool_t ;


 int cleanup_mutex ;
 int pthread_cleanup_pop (int) ;
 int pthread_cleanup_push (int ,TYPE_1__*) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int stub1 (int ) ;

__attribute__((used)) static void *thread_pool_routine(void *context)
{
 cl_thread_pool_t *p_thread_pool = (cl_thread_pool_t *) context;

 do {
  pthread_mutex_lock(&p_thread_pool->mutex);
  pthread_cleanup_push(cleanup_mutex, p_thread_pool);
  while (!p_thread_pool->events)
   pthread_cond_wait(&p_thread_pool->cond,
       &p_thread_pool->mutex);
  p_thread_pool->events--;
  pthread_cleanup_pop(1);

  (*p_thread_pool->pfn_callback) (p_thread_pool->context);
 } while (1);

 return ((void*)0);
}
