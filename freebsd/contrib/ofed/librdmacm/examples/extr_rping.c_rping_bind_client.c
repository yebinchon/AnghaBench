
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_port; } ;
struct sockaddr_in {int sin_port; } ;
struct sockaddr {int dummy; } ;
struct TYPE_4__ {scalar_t__ ss_family; } ;
struct TYPE_3__ {scalar_t__ ss_family; } ;
struct rping_cb {scalar_t__ state; int sem; TYPE_2__ sin; int cm_id; TYPE_1__ ssource; int port; } ;


 scalar_t__ AF_INET ;
 int DEBUG_LOG (char*) ;
 scalar_t__ ROUTE_RESOLVED ;
 int fprintf (int ,char*,scalar_t__) ;
 int perror (char*) ;
 int rdma_resolve_addr (int ,struct sockaddr*,struct sockaddr*,int) ;
 int sem_wait (int *) ;
 int stderr ;

__attribute__((used)) static int rping_bind_client(struct rping_cb *cb)
{
 int ret;

 if (cb->sin.ss_family == AF_INET)
  ((struct sockaddr_in *) &cb->sin)->sin_port = cb->port;
 else
  ((struct sockaddr_in6 *) &cb->sin)->sin6_port = cb->port;

 if (cb->ssource.ss_family)
  ret = rdma_resolve_addr(cb->cm_id, (struct sockaddr *) &cb->ssource,
     (struct sockaddr *) &cb->sin, 2000);
 else
  ret = rdma_resolve_addr(cb->cm_id, ((void*)0), (struct sockaddr *) &cb->sin, 2000);

 if (ret) {
  perror("rdma_resolve_addr");
  return ret;
 }

 sem_wait(&cb->sem);
 if (cb->state != ROUTE_RESOLVED) {
  fprintf(stderr, "waiting for addr/route resolution state %d\n",
   cb->state);
  return -1;
 }

 DEBUG_LOG("rdma_resolve_addr - rdma_resolve_route successful\n");
 return 0;
}
