
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int evutil_socket_t ;


 int EVBUFFER_MAX_READ ;
 int FIONREAD ;
 scalar_t__ ioctl (int ,int ,int*) ;
 scalar_t__ ioctlsocket (int ,int ,unsigned long*) ;

__attribute__((used)) static int
get_n_bytes_readable_on_socket(evutil_socket_t fd)
{
 return EVBUFFER_MAX_READ;

}
