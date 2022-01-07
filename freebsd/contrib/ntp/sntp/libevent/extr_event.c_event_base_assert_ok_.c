
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int dummy; } ;


 int EVBASE_ACQUIRE_LOCK (struct event_base*,int ) ;
 int EVBASE_RELEASE_LOCK (struct event_base*,int ) ;
 int event_base_assert_ok_nolock_ (struct event_base*) ;
 int th_base_lock ;

void
event_base_assert_ok_(struct event_base *base)
{
 EVBASE_ACQUIRE_LOCK(base, th_base_lock);
 event_base_assert_ok_nolock_(base);
 EVBASE_RELEASE_LOCK(base, th_base_lock);
}
