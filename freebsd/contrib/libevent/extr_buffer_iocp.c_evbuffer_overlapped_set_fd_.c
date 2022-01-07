
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer_overlapped {int fd; } ;
struct evbuffer {int dummy; } ;
typedef int evutil_socket_t ;


 int EVBUFFER_LOCK (struct evbuffer*) ;
 int EVBUFFER_UNLOCK (struct evbuffer*) ;
 struct evbuffer_overlapped* upcast_evbuffer (struct evbuffer*) ;

void
evbuffer_overlapped_set_fd_(struct evbuffer *buf, evutil_socket_t fd)
{
 struct evbuffer_overlapped *buf_o = upcast_evbuffer(buf);
 EVBUFFER_LOCK(buf);

 if (buf_o)
  buf_o->fd = fd;
 EVBUFFER_UNLOCK(buf);
}
