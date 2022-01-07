
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct semaphore {scalar_t__ value; int mtx; } ;


 int EAGAIN ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
down_trylock(struct semaphore *s)
{
 int ret;

 ret = 0;

 mtx_lock(&s->mtx);

 if (s->value > 0) {

  s->value--;
  ret = 0;
 } else {
  ret = -EAGAIN;
 }

 mtx_unlock(&s->mtx);

 return (ret);
}
