
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct semaphore {scalar_t__ value; int mtx; int waiters; int cv; } ;


 int cv_wait (int *,int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
down(struct semaphore *s)
{

 mtx_lock(&s->mtx);
 while (s->value == 0) {
  s->waiters++;
  cv_wait(&s->cv, &s->mtx);
  s->waiters--;
 }

 s->value--;
 mtx_unlock(&s->mtx);
}
