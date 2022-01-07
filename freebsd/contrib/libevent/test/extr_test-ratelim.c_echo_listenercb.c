
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct event_base {int dummy; } ;
struct event {int dummy; } ;
struct evconnlistener {int dummy; } ;
struct bufferevent {int dummy; } ;
typedef int evutil_socket_t ;


 int BEV_OPT_CLOSE_ON_FREE ;
 int BEV_OPT_THREADSAFE ;
 int EV_PERSIST ;
 int EV_READ ;
 int EV_WRITE ;
 int assert (int ) ;
 int bufferevent_add_to_rate_limit_group (struct bufferevent*,scalar_t__) ;
 int bufferevent_enable (struct bufferevent*,int) ;
 int * bufferevent_get_token_bucket_cfg (struct bufferevent*) ;
 int bufferevent_set_rate_limit (struct bufferevent*,scalar_t__) ;
 int bufferevent_setcb (struct bufferevent*,int ,int ,int ,int *) ;
 struct bufferevent* bufferevent_socket_new (struct event_base*,int ,int) ;
 int check_bucket_levels_cb ;
 scalar_t__ conn_bucket_cfg ;
 int echo_eventcb ;
 int echo_readcb ;
 int echo_writecb ;
 int event_add (struct event*,int ) ;
 struct event* event_new (struct event_base*,int,int ,int ,struct bufferevent*) ;
 int ms100_common ;
 int n_echo_conns_open ;
 scalar_t__ ratelim_group ;

__attribute__((used)) static void
echo_listenercb(struct evconnlistener *listener, evutil_socket_t newsock,
    struct sockaddr *sourceaddr, int socklen, void *ctx)
{
 struct event_base *base = ctx;
 int flags = BEV_OPT_CLOSE_ON_FREE|BEV_OPT_THREADSAFE;
 struct bufferevent *bev;

 bev = bufferevent_socket_new(base, newsock, flags);
 bufferevent_setcb(bev, echo_readcb, echo_writecb, echo_eventcb, ((void*)0));
 if (conn_bucket_cfg) {
  struct event *check_event =
      event_new(base, -1, EV_PERSIST, check_bucket_levels_cb, bev);
  bufferevent_set_rate_limit(bev, conn_bucket_cfg);

  assert(bufferevent_get_token_bucket_cfg(bev) != ((void*)0));
  event_add(check_event, ms100_common);
 }
 if (ratelim_group)
  bufferevent_add_to_rate_limit_group(bev, ratelim_group);
 ++n_echo_conns_open;
 bufferevent_enable(bev, EV_READ|EV_WRITE);
}
