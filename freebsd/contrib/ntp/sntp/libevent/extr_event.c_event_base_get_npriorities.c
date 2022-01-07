
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int nactivequeues; } ;


 int EVBASE_ACQUIRE_LOCK (struct event_base*,int ) ;
 int EVBASE_RELEASE_LOCK (struct event_base*,int ) ;
 struct event_base* current_base ;
 int th_base_lock ;

int
event_base_get_npriorities(struct event_base *base)
{

 int n;
 if (base == ((void*)0))
  base = current_base;

 EVBASE_ACQUIRE_LOCK(base, th_base_lock);
 n = base->nactivequeues;
 EVBASE_RELEASE_LOCK(base, th_base_lock);
 return (n);
}
