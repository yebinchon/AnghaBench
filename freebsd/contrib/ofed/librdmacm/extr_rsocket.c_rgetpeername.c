
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct rsocket {scalar_t__ type; int udp_sock; int cm_id; } ;
typedef int socklen_t ;


 int EBADF ;
 int ERR (int ) ;
 scalar_t__ SOCK_STREAM ;
 int getpeername (int ,struct sockaddr*,int *) ;
 int idm ;
 struct rsocket* idm_lookup (int *,int) ;
 int rdma_get_peer_addr (int ) ;
 int rs_copy_addr (struct sockaddr*,int ,int *) ;

int rgetpeername(int socket, struct sockaddr *addr, socklen_t *addrlen)
{
 struct rsocket *rs;

 rs = idm_lookup(&idm, socket);
 if (!rs)
  return ERR(EBADF);
 if (rs->type == SOCK_STREAM) {
  rs_copy_addr(addr, rdma_get_peer_addr(rs->cm_id), addrlen);
  return 0;
 } else {
  return getpeername(rs->udp_sock, addr, addrlen);
 }
}
