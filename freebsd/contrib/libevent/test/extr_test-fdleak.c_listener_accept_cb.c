
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct event_base {int dummy; } ;
struct evconnlistener {int dummy; } ;
struct bufferevent {int dummy; } ;
typedef int evutil_socket_t ;


 int BEV_OPT_CLOSE_ON_FREE ;
 int EV_READ ;
 int EV_WRITE ;
 int bufferevent_enable (struct bufferevent*,int) ;
 int bufferevent_setcb (struct bufferevent*,int ,int *,int ,int *) ;
 struct bufferevent* bufferevent_socket_new (struct event_base*,int ,int ) ;
 struct event_base* evconnlistener_get_base (struct evconnlistener*) ;
 int server_event_cb ;
 int server_read_cb ;

__attribute__((used)) static void
listener_accept_cb(struct evconnlistener *listener, evutil_socket_t sock,
                   struct sockaddr *addr, int len, void *ptr)
{
 struct event_base *base = evconnlistener_get_base(listener);
 struct bufferevent *bev = bufferevent_socket_new(base, sock,
                                                         BEV_OPT_CLOSE_ON_FREE);

 bufferevent_setcb(bev, server_read_cb, ((void*)0), server_event_cb, ((void*)0));
 bufferevent_enable(bev, EV_READ|EV_WRITE);
}
