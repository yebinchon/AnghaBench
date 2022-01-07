
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bq_list; int bq_lock; int bq_pop_cv; int bq_add_cv; int bq_size; } ;
typedef TYPE_1__ bqueue_t ;


 int ASSERT0 (int ) ;
 int cv_destroy (int *) ;
 int list_destroy (int *) ;
 int mutex_destroy (int *) ;

void
bqueue_destroy(bqueue_t *q)
{
 ASSERT0(q->bq_size);
 cv_destroy(&q->bq_add_cv);
 cv_destroy(&q->bq_pop_cv);
 mutex_destroy(&q->bq_lock);
 list_destroy(&q->bq_list);
}
