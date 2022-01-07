
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int (* th_notify_fn ) (struct event_base*) ;int is_notify_pending; } ;


 int EVENT_BASE_ASSERT_LOCKED (struct event_base*) ;
 int stub1 (struct event_base*) ;

__attribute__((used)) static int
evthread_notify_base(struct event_base *base)
{
 EVENT_BASE_ASSERT_LOCKED(base);
 if (!base->th_notify_fn)
  return -1;
 if (base->is_notify_pending)
  return 0;
 base->is_notify_pending = 1;
 return base->th_notify_fn(base);
}
