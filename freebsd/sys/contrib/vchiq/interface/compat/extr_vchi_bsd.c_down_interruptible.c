
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct semaphore {scalar_t__ value; int mtx; int waiters; int cv; } ;


 int EINTR ;
 int ERESTART ;
 int cv_wait_sig (int *,int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
down_interruptible(struct semaphore *s)
{
 int ret ;

 ret = 0;

 mtx_lock(&s->mtx);

 while (s->value == 0) {
  s->waiters++;
  ret = cv_wait_sig(&s->cv, &s->mtx);
  s->waiters--;

  if (ret == EINTR) {
   mtx_unlock(&s->mtx);
   return (-EINTR);
  }

  if (ret == ERESTART)
   continue;
 }

 s->value--;
 mtx_unlock(&s->mtx);

 return (0);
}
