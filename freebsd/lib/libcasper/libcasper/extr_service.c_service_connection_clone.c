
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct service_connection {int dummy; } ;
struct service {int dummy; } ;


 int PF_UNIX ;
 int SOCK_NONBLOCK ;
 int SOCK_STREAM ;
 int close (int) ;
 int errno ;
 struct service_connection* service_connection_add (struct service*,int,int ) ;
 int service_connection_get_limits (struct service_connection*) ;
 scalar_t__ socketpair (int ,int,int ,int*) ;

int
service_connection_clone(struct service *service,
    struct service_connection *sconn)
{
 struct service_connection *newsconn;
 int serrno, sock[2];

 if (socketpair(PF_UNIX, SOCK_STREAM | SOCK_NONBLOCK, 0, sock) < 0)
  return (-1);

 newsconn = service_connection_add(service, sock[0],
     service_connection_get_limits(sconn));
 if (newsconn == ((void*)0)) {
  serrno = errno;
  close(sock[0]);
  close(sock[1]);
  errno = serrno;
  return (-1);
 }

 return (sock[1]);
}
