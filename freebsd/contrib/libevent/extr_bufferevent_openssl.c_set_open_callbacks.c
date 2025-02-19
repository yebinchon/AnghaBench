
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bufferevent {int timeout_write; int ev_write; int timeout_read; int ev_read; int ev_base; } ;
struct TYPE_2__ {struct bufferevent bev; } ;
struct bufferevent_openssl {TYPE_1__ bev; scalar_t__ underlying; } ;
typedef int evutil_socket_t ;


 int EV_FINALIZE ;
 int EV_PERSIST ;
 int EV_READ ;
 int EV_WRITE ;
 int be_openssl_eventcb ;
 int be_openssl_readcb ;
 int be_openssl_readeventcb ;
 int be_openssl_writecb ;
 int be_openssl_writeeventcb ;
 int bufferevent_add_event_ (int *,int *) ;
 int bufferevent_setcb (scalar_t__,int ,int ,int ,struct bufferevent_openssl*) ;
 int event_assign (int *,int ,int ,int,int ,struct bufferevent_openssl*) ;
 int event_del (int *) ;
 scalar_t__ event_initialized (int *) ;
 int event_pending (int *,int,int *) ;

__attribute__((used)) static int
set_open_callbacks(struct bufferevent_openssl *bev_ssl, evutil_socket_t fd)
{
 if (bev_ssl->underlying) {
  bufferevent_setcb(bev_ssl->underlying,
      be_openssl_readcb, be_openssl_writecb, be_openssl_eventcb,
      bev_ssl);
  return 0;
 } else {
  struct bufferevent *bev = &bev_ssl->bev.bev;
  int rpending=0, wpending=0, r1=0, r2=0;

  if (event_initialized(&bev->ev_read)) {
   rpending = event_pending(&bev->ev_read, EV_READ, ((void*)0));
   wpending = event_pending(&bev->ev_write, EV_WRITE, ((void*)0));

   event_del(&bev->ev_read);
   event_del(&bev->ev_write);
  }

  event_assign(&bev->ev_read, bev->ev_base, fd,
      EV_READ|EV_PERSIST|EV_FINALIZE,
      be_openssl_readeventcb, bev_ssl);
  event_assign(&bev->ev_write, bev->ev_base, fd,
      EV_WRITE|EV_PERSIST|EV_FINALIZE,
      be_openssl_writeeventcb, bev_ssl);

  if (rpending)
   r1 = bufferevent_add_event_(&bev->ev_read, &bev->timeout_read);
  if (wpending)
   r2 = bufferevent_add_event_(&bev->ev_write, &bev->timeout_write);

  return (r1<0 || r2<0) ? -1 : 0;
 }
}
