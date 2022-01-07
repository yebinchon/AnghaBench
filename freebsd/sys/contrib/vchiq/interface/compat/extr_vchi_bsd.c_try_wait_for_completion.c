
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct completion {int lock; int done; } ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
try_wait_for_completion(struct completion *c)
{
 int res = 0;

 mtx_lock(&c->lock);
 if (!c->done)
  res = 1;
 else
  c->done--;
 mtx_unlock(&c->lock);
 return res == 0;
}
