
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent_openssl {scalar_t__ underlying; } ;
struct bufferevent {int ev_write; int timeout_write; int ev_read; int timeout_read; } ;


 int EV_READ ;
 int EV_WRITE ;
 int bufferevent_add_event_ (int *,int *) ;
 int bufferevent_generic_adj_timeouts_ (struct bufferevent*) ;
 scalar_t__ event_pending (int *,int ,int *) ;
 int event_remove_timer (int *) ;
 scalar_t__ evutil_timerisset (int *) ;
 struct bufferevent_openssl* upcast (struct bufferevent*) ;

__attribute__((used)) static int
be_openssl_adj_timeouts(struct bufferevent *bev)
{
 struct bufferevent_openssl *bev_ssl = upcast(bev);

 if (bev_ssl->underlying) {
  return bufferevent_generic_adj_timeouts_(bev);
 } else {
  int r1=0, r2=0;
  if (event_pending(&bev->ev_read, EV_READ, ((void*)0))) {
   if (evutil_timerisset(&bev->timeout_read)) {
    r1 = bufferevent_add_event_(&bev->ev_read, &bev->timeout_read);
   } else {
    event_remove_timer(&bev->ev_read);
   }
  }
  if (event_pending(&bev->ev_write, EV_WRITE, ((void*)0))) {
   if (evutil_timerisset(&bev->timeout_write)) {
    r2 = bufferevent_add_event_(&bev->ev_write, &bev->timeout_write);
   } else {
    event_remove_timer(&bev->ev_write);
   }
  }

  return (r1<0 || r2<0) ? -1 : 0;
 }
}
