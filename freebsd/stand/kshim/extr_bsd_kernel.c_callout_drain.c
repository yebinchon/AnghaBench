
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct callout {int * mtx; } ;


 int callout_stop (struct callout*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
callout_drain(struct callout *c)
{
 if (c->mtx == ((void*)0))
  return;

 mtx_lock(c->mtx);
 callout_stop(c);
 mtx_unlock(c->mtx);
}
