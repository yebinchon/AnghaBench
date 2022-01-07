
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int dummy; } ;
struct bufferevent {int dummy; } ;


 int TT_BLATHER (char*) ;
 int event_base_loopexit (struct event_base*,int *) ;
 int reader_eventcb (struct bufferevent*,short,void*) ;

__attribute__((used)) static void
trigger_eventcb(struct bufferevent *bev, short what, void *ctx)
{
 struct event_base *base = ctx;
 if (what == ~0) {
  TT_BLATHER(("Event successfully triggered."));
  event_base_loopexit(base, ((void*)0));
  return;
 }
 reader_eventcb(bev, what, ctx);
}
