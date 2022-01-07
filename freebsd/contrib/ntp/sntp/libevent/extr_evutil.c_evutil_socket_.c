
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ evutil_socket_t ;


 int EVUTIL_SOCK_CLOEXEC ;
 int EVUTIL_SOCK_NONBLOCK ;
 int SOCKET_TYPE_MASK ;
 int SOCK_CLOEXEC ;
 int SOCK_NONBLOCK ;
 int evutil_closesocket (scalar_t__) ;
 scalar_t__ evutil_fast_socket_closeonexec (scalar_t__) ;
 scalar_t__ evutil_fast_socket_nonblocking (scalar_t__) ;
 scalar_t__ socket (int,int,int) ;

evutil_socket_t
evutil_socket_(int domain, int type, int protocol)
{
 evutil_socket_t r;
 r = socket(domain, type & (~(EVUTIL_SOCK_NONBLOCK|EVUTIL_SOCK_CLOEXEC)), protocol);
 if (r < 0)
  return -1;
 if (type & EVUTIL_SOCK_NONBLOCK) {
  if (evutil_fast_socket_nonblocking(r) < 0) {
   evutil_closesocket(r);
   return -1;
  }
 }
 if (type & EVUTIL_SOCK_CLOEXEC) {
  if (evutil_fast_socket_closeonexec(r) < 0) {
   evutil_closesocket(r);
   return -1;
  }
 }
 return r;
}
