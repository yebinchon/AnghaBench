
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct rsocket {scalar_t__ type; scalar_t__ state; int udp_sock; int cm_id; } ;
typedef int socklen_t ;


 int EBADF ;
 int ERR (int ) ;
 scalar_t__ SOCK_STREAM ;
 int bind (int ,struct sockaddr const*,int ) ;
 int ds_init_ep (struct rsocket*) ;
 int idm ;
 struct rsocket* idm_lookup (int *,int) ;
 int rdma_bind_addr (int ,struct sockaddr*) ;
 scalar_t__ rs_bound ;
 scalar_t__ rs_init ;

int rbind(int socket, const struct sockaddr *addr, socklen_t addrlen)
{
 struct rsocket *rs;
 int ret;

 rs = idm_lookup(&idm, socket);
 if (!rs)
  return ERR(EBADF);
 if (rs->type == SOCK_STREAM) {
  ret = rdma_bind_addr(rs->cm_id, (struct sockaddr *) addr);
  if (!ret)
   rs->state = rs_bound;
 } else {
  if (rs->state == rs_init) {
   ret = ds_init_ep(rs);
   if (ret)
    return ret;
  }
  ret = bind(rs->udp_sock, addr, addrlen);
 }
 return ret;
}
