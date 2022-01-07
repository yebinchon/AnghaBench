
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_port; } ;
struct sockaddr_in {int sin_port; } ;
struct sockaddr {int dummy; } ;
struct TYPE_2__ {scalar_t__ ss_family; } ;
struct rping_cb {int cm_id; TYPE_1__ sin; int port; } ;


 scalar_t__ AF_INET ;
 int DEBUG_LOG (char*) ;
 int perror (char*) ;
 int rdma_bind_addr (int ,struct sockaddr*) ;
 int rdma_listen (int ,int) ;

__attribute__((used)) static int rping_bind_server(struct rping_cb *cb)
{
 int ret;

 if (cb->sin.ss_family == AF_INET)
  ((struct sockaddr_in *) &cb->sin)->sin_port = cb->port;
 else
  ((struct sockaddr_in6 *) &cb->sin)->sin6_port = cb->port;

 ret = rdma_bind_addr(cb->cm_id, (struct sockaddr *) &cb->sin);
 if (ret) {
  perror("rdma_bind_addr");
  return ret;
 }
 DEBUG_LOG("rdma_bind_addr successful\n");

 DEBUG_LOG("rdma_listen\n");
 ret = rdma_listen(cb->cm_id, 3);
 if (ret) {
  perror("rdma_listen");
  return ret;
 }

 return 0;
}
