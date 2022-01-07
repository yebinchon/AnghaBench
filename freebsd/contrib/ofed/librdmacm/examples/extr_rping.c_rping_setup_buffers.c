
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rping_cb {int size; void* recv_mr; void* send_mr; int * rdma_buf; void* rdma_mr; int * start_buf; void* start_mr; int pd; int server; int send_buf; int recv_buf; } ;


 int DEBUG_LOG (char*,...) ;
 int ENOMEM ;
 int IBV_ACCESS_LOCAL_WRITE ;
 int IBV_ACCESS_REMOTE_READ ;
 int IBV_ACCESS_REMOTE_WRITE ;
 int errno ;
 int fprintf (int ,char*) ;
 int free (int *) ;
 int ibv_dereg_mr (void*) ;
 void* ibv_reg_mr (int ,int *,int,int) ;
 void* malloc (int) ;
 int rping_setup_wr (struct rping_cb*) ;
 int stderr ;

__attribute__((used)) static int rping_setup_buffers(struct rping_cb *cb)
{
 int ret;

 DEBUG_LOG("rping_setup_buffers called on cb %p\n", cb);

 cb->recv_mr = ibv_reg_mr(cb->pd, &cb->recv_buf, sizeof cb->recv_buf,
     IBV_ACCESS_LOCAL_WRITE);
 if (!cb->recv_mr) {
  fprintf(stderr, "recv_buf reg_mr failed\n");
  return errno;
 }

 cb->send_mr = ibv_reg_mr(cb->pd, &cb->send_buf, sizeof cb->send_buf, 0);
 if (!cb->send_mr) {
  fprintf(stderr, "send_buf reg_mr failed\n");
  ret = errno;
  goto err1;
 }

 cb->rdma_buf = malloc(cb->size);
 if (!cb->rdma_buf) {
  fprintf(stderr, "rdma_buf malloc failed\n");
  ret = -ENOMEM;
  goto err2;
 }

 cb->rdma_mr = ibv_reg_mr(cb->pd, cb->rdma_buf, cb->size,
     IBV_ACCESS_LOCAL_WRITE |
     IBV_ACCESS_REMOTE_READ |
     IBV_ACCESS_REMOTE_WRITE);
 if (!cb->rdma_mr) {
  fprintf(stderr, "rdma_buf reg_mr failed\n");
  ret = errno;
  goto err3;
 }

 if (!cb->server) {
  cb->start_buf = malloc(cb->size);
  if (!cb->start_buf) {
   fprintf(stderr, "start_buf malloc failed\n");
   ret = -ENOMEM;
   goto err4;
  }

  cb->start_mr = ibv_reg_mr(cb->pd, cb->start_buf, cb->size,
       IBV_ACCESS_LOCAL_WRITE |
       IBV_ACCESS_REMOTE_READ |
       IBV_ACCESS_REMOTE_WRITE);
  if (!cb->start_mr) {
   fprintf(stderr, "start_buf reg_mr failed\n");
   ret = errno;
   goto err5;
  }
 }

 rping_setup_wr(cb);
 DEBUG_LOG("allocated & registered buffers...\n");
 return 0;

err5:
 free(cb->start_buf);
err4:
 ibv_dereg_mr(cb->rdma_mr);
err3:
 free(cb->rdma_buf);
err2:
 ibv_dereg_mr(cb->send_mr);
err1:
 ibv_dereg_mr(cb->recv_mr);
 return ret;
}
