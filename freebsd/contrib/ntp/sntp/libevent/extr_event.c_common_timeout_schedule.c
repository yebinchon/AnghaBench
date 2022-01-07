
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; } ;
struct event {struct timeval ev_timeout; } ;
struct common_timeout_list {int timeout_event; } ;


 int MICROSECONDS_MASK ;
 int event_add_nolock_ (int *,struct timeval*,int) ;

__attribute__((used)) static void
common_timeout_schedule(struct common_timeout_list *ctl,
    const struct timeval *now, struct event *head)
{
 struct timeval timeout = head->ev_timeout;
 timeout.tv_usec &= MICROSECONDS_MASK;
 event_add_nolock_(&ctl->timeout_event, &timeout, 1);
}
