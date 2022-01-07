
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_connection {int fd; int state; int bufev; int closecb_arg; int (* closecb ) (struct evhttp_connection*,int ) ;} ;
struct evbuffer {int dummy; } ;


 int EVCON_DISCONNECTED ;
 int EVUTIL_SHUT_WR ;
 int EV_READ ;
 int EV_WRITE ;
 int bufferevent_disable_hard_ (int ,int) ;
 struct evbuffer* bufferevent_get_input (int ) ;
 struct evbuffer* bufferevent_get_output (int ) ;
 int bufferevent_setfd (int ,int) ;
 int evbuffer_drain (struct evbuffer*,int ) ;
 int evbuffer_get_length (struct evbuffer*) ;
 scalar_t__ evhttp_connected (struct evhttp_connection*) ;
 int evutil_closesocket (int) ;
 int shutdown (int,int ) ;
 int stub1 (struct evhttp_connection*,int ) ;

void
evhttp_connection_reset_(struct evhttp_connection *evcon)
{
 struct evbuffer *tmp;
 bufferevent_disable_hard_(evcon->bufev, EV_READ|EV_WRITE);

 if (evcon->fd != -1) {

  if (evhttp_connected(evcon) && evcon->closecb != ((void*)0))
   (*evcon->closecb)(evcon, evcon->closecb_arg);

  shutdown(evcon->fd, EVUTIL_SHUT_WR);
  evutil_closesocket(evcon->fd);
  bufferevent_setfd(evcon->bufev, -1);
  evcon->fd = -1;
 }


 tmp = bufferevent_get_output(evcon->bufev);
 evbuffer_drain(tmp, evbuffer_get_length(tmp));
 tmp = bufferevent_get_input(evcon->bufev);
 evbuffer_drain(tmp, evbuffer_get_length(tmp));

 evcon->state = EVCON_DISCONNECTED;
}
