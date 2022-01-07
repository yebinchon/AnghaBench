
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsocket {scalar_t__ state; int cm_id; } ;


 int EBADF ;
 int ERR (int ) ;
 int idm ;
 struct rsocket* idm_lookup (int *,int) ;
 int rdma_listen (int ,int) ;
 scalar_t__ rs_listening ;

int rlisten(int socket, int backlog)
{
 struct rsocket *rs;
 int ret;

 rs = idm_lookup(&idm, socket);
 if (!rs)
  return ERR(EBADF);

 if (rs->state != rs_listening) {
  ret = rdma_listen(rs->cm_id, backlog);
  if (!ret)
   rs->state = rs_listening;
 } else {
  ret = 0;
 }
 return ret;
}
