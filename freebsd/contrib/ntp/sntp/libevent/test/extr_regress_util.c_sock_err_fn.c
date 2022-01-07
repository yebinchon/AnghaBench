
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int evutil_socket_t ;


 int AF_INET ;
 int EAGAIN ;
 int EVUTIL_SET_SOCKET_ERROR (int ) ;
 int SOCK_STREAM ;
 int WSAEWOULDBLOCK ;
 int errno ;
 int event_sock_err (int,int ,char*) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static void
sock_err_fn(void)
{
 evutil_socket_t fd = socket(AF_INET, SOCK_STREAM, 0);



 errno = EAGAIN;

 event_sock_err(20, fd, "Unhappy socket");
}
