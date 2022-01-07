
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int evutil_socket_t ;
typedef int ev_socklen_t ;
typedef int e ;


 scalar_t__ EVUTIL_ERR_CONNECT_RETRIABLE (int) ;
 int EVUTIL_SET_SOCKET_ERROR (int) ;
 int SOL_SOCKET ;
 int SO_ERROR ;
 scalar_t__ getsockopt (int ,int ,int ,void*,int*) ;

int
evutil_socket_finished_connecting_(evutil_socket_t fd)
{
 int e;
 ev_socklen_t elen = sizeof(e);

 if (getsockopt(fd, SOL_SOCKET, SO_ERROR, (void*)&e, &elen) < 0)
  return -1;

 if (e) {
  if (EVUTIL_ERR_CONNECT_RETRIABLE(e))
   return 0;
  EVUTIL_SET_SOCKET_ERROR(e);
  return -1;
 }

 return 1;
}
