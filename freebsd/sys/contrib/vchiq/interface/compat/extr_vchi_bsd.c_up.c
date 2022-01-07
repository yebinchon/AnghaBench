
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct semaphore {scalar_t__ value; int mtx; int cv; scalar_t__ waiters; } ;


 int cv_signal (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
up(struct semaphore *s)
{
 mtx_lock(&s->mtx);
 s->value++;
 if (s->waiters && s->value > 0)
  cv_signal(&s->cv);

 mtx_unlock(&s->mtx);
}
