
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_5__ {scalar_t__ bq_size; int bq_add_cv; int bq_lock; int bq_list; int bq_pop_cv; } ;
typedef TYPE_1__ bqueue_t ;
struct TYPE_6__ {scalar_t__ bqn_size; } ;


 int cv_signal (int *) ;
 int cv_wait (int *,int *) ;
 void* list_remove_head (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 TYPE_2__* obj2node (TYPE_1__*,void*) ;

void *
bqueue_dequeue(bqueue_t *q)
{
 void *ret;
 uint64_t item_size;
 mutex_enter(&q->bq_lock);
 while (q->bq_size == 0) {
  cv_wait(&q->bq_pop_cv, &q->bq_lock);
 }
 ret = list_remove_head(&q->bq_list);
 item_size = obj2node(q, ret)->bqn_size;
 q->bq_size -= item_size;
 mutex_exit(&q->bq_lock);
 cv_signal(&q->bq_add_cv);
 return (ret);
}
