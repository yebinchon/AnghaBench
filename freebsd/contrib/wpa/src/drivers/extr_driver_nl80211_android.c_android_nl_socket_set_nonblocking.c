
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_handle {int dummy; } ;


 int F_SETFL ;
 int O_NONBLOCK ;
 int fcntl (int ,int ,int ) ;
 int nl_socket_get_fd (struct nl_handle*) ;

int android_nl_socket_set_nonblocking(struct nl_handle *handle)
{
 return fcntl(nl_socket_get_fd(handle), F_SETFL, O_NONBLOCK);
}
