
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer_overlapped {int fd; } ;
struct evbuffer {int dummy; } ;
typedef int evutil_socket_t ;


 struct evbuffer_overlapped* upcast_evbuffer (struct evbuffer*) ;

evutil_socket_t
evbuffer_overlapped_get_fd_(struct evbuffer *buf)
{
 struct evbuffer_overlapped *buf_o = upcast_evbuffer(buf);
 return buf_o ? buf_o->fd : -1;
}
