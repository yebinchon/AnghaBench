
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct bufferevent_private {int conn_address; } ;


 int EVUTIL_ASSERT (int) ;
 int memcpy (int *,struct sockaddr*,size_t) ;

__attribute__((used)) static void
bufferevent_socket_set_conn_address(struct bufferevent_private *bev_p,
 struct sockaddr *addr, size_t addrlen)
{
 EVUTIL_ASSERT(addrlen <= sizeof(bev_p->conn_address));
 memcpy(&bev_p->conn_address, addr, addrlen);
}
