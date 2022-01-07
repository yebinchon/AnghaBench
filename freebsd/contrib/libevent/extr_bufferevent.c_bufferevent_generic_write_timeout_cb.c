
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int dummy; } ;
typedef int evutil_socket_t ;


 int BEV_EVENT_TIMEOUT ;
 int BEV_EVENT_WRITING ;
 int EV_WRITE ;
 int bufferevent_decref_and_unlock_ (struct bufferevent*) ;
 int bufferevent_disable (struct bufferevent*,int ) ;
 int bufferevent_incref_and_lock_ (struct bufferevent*) ;
 int bufferevent_run_eventcb_ (struct bufferevent*,int,int ) ;

__attribute__((used)) static void
bufferevent_generic_write_timeout_cb(evutil_socket_t fd, short event, void *ctx)
{
 struct bufferevent *bev = ctx;
 bufferevent_incref_and_lock_(bev);
 bufferevent_disable(bev, EV_WRITE);
 bufferevent_run_eventcb_(bev, BEV_EVENT_TIMEOUT|BEV_EVENT_WRITING, 0);
 bufferevent_decref_and_unlock_(bev);
}
