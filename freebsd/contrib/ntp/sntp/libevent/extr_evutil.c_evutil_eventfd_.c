
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int evutil_socket_t ;


 int EVUTIL_EFD_CLOEXEC ;
 int EVUTIL_EFD_NONBLOCK ;
 int eventfd (unsigned int,int) ;
 int evutil_closesocket (int) ;
 scalar_t__ evutil_fast_socket_closeonexec (int) ;
 scalar_t__ evutil_fast_socket_nonblocking (int) ;

evutil_socket_t
evutil_eventfd_(unsigned initval, int flags)
{
 return -1;

}
