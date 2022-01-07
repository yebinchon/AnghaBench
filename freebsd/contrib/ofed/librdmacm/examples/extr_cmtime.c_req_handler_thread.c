
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct list_head {int id; } ;
struct TYPE_4__ {int lock; int cond; } ;


 scalar_t__ __list_empty (TYPE_1__*) ;
 struct list_head* __list_remove_head (TYPE_1__*) ;
 int __req_handler (int ) ;
 int free (struct list_head*) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_1__ req_work ;

__attribute__((used)) static void *req_handler_thread(void *arg)
{
 struct list_head *work;
 do {
  pthread_mutex_lock(&req_work.lock);
  if (__list_empty(&req_work))
   pthread_cond_wait(&req_work.cond, &req_work.lock);
  work = __list_remove_head(&req_work);
  pthread_mutex_unlock(&req_work.lock);
  __req_handler(work->id);
  free(work);
 } while (1);
 return ((void*)0);
}
