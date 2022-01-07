
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {scalar_t__ sa_family; } ;
struct bufferevent_private {int conn_address; } ;
typedef int socklen_t ;


 scalar_t__ AF_UNSPEC ;
 int getpeername (int,struct sockaddr*,int*) ;

__attribute__((used)) static void
bufferevent_socket_set_conn_address_fd(struct bufferevent_private *bev_p, int fd)
{
 socklen_t len = sizeof(bev_p->conn_address);

 struct sockaddr *addr = (struct sockaddr *)&bev_p->conn_address;
 if (addr->sa_family != AF_UNSPEC)
  getpeername(fd, addr, &len);
}
