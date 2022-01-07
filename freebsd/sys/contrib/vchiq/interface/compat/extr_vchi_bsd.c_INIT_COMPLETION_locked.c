
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct completion {int lock; scalar_t__ done; } ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
INIT_COMPLETION_locked(struct completion *c)
{
 mtx_lock(&c->lock);

 c->done = 0;

 mtx_unlock(&c->lock);
}
