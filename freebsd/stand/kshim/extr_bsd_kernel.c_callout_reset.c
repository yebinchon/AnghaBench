
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct callout {void (* c_func ) (void*) ;scalar_t__ timeout; void* c_arg; } ;


 int LIST_INSERT_HEAD (int *,struct callout*,int ) ;
 int callout_stop (struct callout*) ;
 int entry ;
 int head_callout ;
 int mtx_callout ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ ticks ;

void
callout_reset(struct callout *c, int to_ticks,
    void (*func) (void *), void *arg)
{
 callout_stop(c);

 c->c_func = func;
 c->c_arg = arg;
 c->timeout = ticks + to_ticks;

 mtx_lock(&mtx_callout);
 LIST_INSERT_HEAD(&head_callout, c, entry);
 mtx_unlock(&mtx_callout);
}
