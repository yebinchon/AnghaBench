
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int dummy; } ;
struct bufferevent {struct event_base* ev_base; } ;



struct event_base *
bufferevent_get_base(struct bufferevent *bufev)
{
 return bufev->ev_base;
}
