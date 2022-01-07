
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct list_head {int id; } ;
struct TYPE_4__ {int lock; int cond; } ;


 scalar_t__ __list_empty (TYPE_1__*) ;
 struct list_head* __list_remove_head (TYPE_1__*) ;
 TYPE_1__ disc_work ;
 int free (struct list_head*) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int rdma_destroy_id (int ) ;
 int rdma_disconnect (int ) ;

__attribute__((used)) static void *disc_handler_thread(void *arg)
{
 struct list_head *work;
 do {
  pthread_mutex_lock(&disc_work.lock);
  if (__list_empty(&disc_work))
   pthread_cond_wait(&disc_work.cond, &disc_work.lock);
  work = __list_remove_head(&disc_work);
  pthread_mutex_unlock(&disc_work.lock);
  rdma_disconnect(work->id);
  rdma_destroy_id(work->id);
  free(work);
 } while (1);
 return ((void*)0);
}
