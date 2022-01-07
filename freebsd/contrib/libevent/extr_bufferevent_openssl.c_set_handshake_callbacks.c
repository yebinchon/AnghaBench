
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bufferevent {int enabled; int ev_base; int ev_write; int ev_read; } ;
struct TYPE_2__ {struct bufferevent bev; } ;
struct bufferevent_openssl {TYPE_1__ bev; scalar_t__ underlying; } ;
typedef scalar_t__ evutil_socket_t ;


 int EV_FINALIZE ;
 int EV_PERSIST ;
 int EV_READ ;
 int EV_WRITE ;
 int be_openssl_eventcb ;
 int be_openssl_handshakecb ;
 int be_openssl_handshakeeventcb ;
 int bufferevent_enable (struct bufferevent*,int ) ;
 int bufferevent_setcb (scalar_t__,int ,int ,int ,struct bufferevent_openssl*) ;
 scalar_t__ bufferevent_setfd (scalar_t__,scalar_t__) ;
 int do_handshake (struct bufferevent_openssl*) ;
 int event_assign (int *,int ,scalar_t__,int,int ,struct bufferevent_openssl*) ;
 int event_del (int *) ;
 scalar_t__ event_initialized (int *) ;

__attribute__((used)) static int
set_handshake_callbacks(struct bufferevent_openssl *bev_ssl, evutil_socket_t fd)
{
 if (bev_ssl->underlying) {
  bufferevent_setcb(bev_ssl->underlying,
      be_openssl_handshakecb, be_openssl_handshakecb,
      be_openssl_eventcb,
      bev_ssl);

  if (fd < 0)
   return 0;

  if (bufferevent_setfd(bev_ssl->underlying, fd))
   return 1;

  return do_handshake(bev_ssl);
 } else {
  struct bufferevent *bev = &bev_ssl->bev.bev;

  if (event_initialized(&bev->ev_read)) {
   event_del(&bev->ev_read);
   event_del(&bev->ev_write);
  }

  event_assign(&bev->ev_read, bev->ev_base, fd,
      EV_READ|EV_PERSIST|EV_FINALIZE,
      be_openssl_handshakeeventcb, bev_ssl);
  event_assign(&bev->ev_write, bev->ev_base, fd,
      EV_WRITE|EV_PERSIST|EV_FINALIZE,
      be_openssl_handshakeeventcb, bev_ssl);
  if (fd >= 0)
   bufferevent_enable(bev, bev->enabled);
  return 0;
 }
}
