
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int dummy; } ;
typedef int evutil_socket_t ;
typedef int bufferevent_event_cb ;
typedef int bufferevent_data_cb ;


 int bufferevent_setcb (struct bufferevent*,int ,int ,int ,void*) ;
 struct bufferevent* bufferevent_socket_new (int *,int ,int ) ;

struct bufferevent *
bufferevent_new(evutil_socket_t fd,
    bufferevent_data_cb readcb, bufferevent_data_cb writecb,
    bufferevent_event_cb eventcb, void *cbarg)
{
 struct bufferevent *bufev;

 if (!(bufev = bufferevent_socket_new(((void*)0), fd, 0)))
  return ((void*)0);

 bufferevent_setcb(bufev, readcb, writecb, eventcb, cbarg);

 return bufev;
}
