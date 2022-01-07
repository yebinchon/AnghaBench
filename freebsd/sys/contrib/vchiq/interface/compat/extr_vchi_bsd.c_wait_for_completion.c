
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct completion {int lock; int done; int cv; } ;


 int cv_wait (int *,int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
wait_for_completion(struct completion *c)
{
 mtx_lock(&c->lock);
 if (!c->done)
  cv_wait(&c->cv, &c->lock);
 c->done--;
 mtx_unlock(&c->lock);
}
