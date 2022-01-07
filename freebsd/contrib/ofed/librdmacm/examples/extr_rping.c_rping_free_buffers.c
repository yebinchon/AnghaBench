
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rping_cb {int start_buf; int start_mr; int server; int rdma_buf; int rdma_mr; int send_mr; int recv_mr; } ;


 int DEBUG_LOG (char*,struct rping_cb*) ;
 int free (int ) ;
 int ibv_dereg_mr (int ) ;

__attribute__((used)) static void rping_free_buffers(struct rping_cb *cb)
{
 DEBUG_LOG("rping_free_buffers called on cb %p\n", cb);
 ibv_dereg_mr(cb->recv_mr);
 ibv_dereg_mr(cb->send_mr);
 ibv_dereg_mr(cb->rdma_mr);
 free(cb->rdma_buf);
 if (!cb->server) {
  ibv_dereg_mr(cb->start_mr);
  free(cb->start_buf);
 }
}
