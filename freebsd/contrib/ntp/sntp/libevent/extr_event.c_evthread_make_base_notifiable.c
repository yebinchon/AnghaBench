
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int dummy; } ;


 int EVBASE_ACQUIRE_LOCK (struct event_base*,int ) ;
 int EVBASE_RELEASE_LOCK (struct event_base*,int ) ;
 int evthread_make_base_notifiable_nolock_ (struct event_base*) ;
 int th_base_lock ;

int
evthread_make_base_notifiable(struct event_base *base)
{
 int r;
 if (!base)
  return -1;

 EVBASE_ACQUIRE_LOCK(base, th_base_lock);
 r = evthread_make_base_notifiable_nolock_(base);
 EVBASE_RELEASE_LOCK(base, th_base_lock);
 return r;
}
