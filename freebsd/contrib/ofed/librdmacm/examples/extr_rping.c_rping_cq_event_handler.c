
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rping_cb {int sem; int state; int rq_wr; int qp; int server; int cq; } ;
struct ibv_wc {scalar_t__ status; int opcode; } ;
struct ibv_recv_wr {int dummy; } ;


 int DEBUG_LOG (char*) ;
 int ERROR ;




 scalar_t__ IBV_WC_WR_FLUSH_ERR ;
 int RDMA_READ_COMPLETE ;
 int RDMA_WRITE_COMPLETE ;
 int client_recv (struct rping_cb*,struct ibv_wc*) ;
 int fprintf (int ,char*,int) ;
 int ibv_poll_cq (int ,int,struct ibv_wc*) ;
 int ibv_post_recv (int ,int *,struct ibv_recv_wr**) ;
 int sem_post (int *) ;
 int server_recv (struct rping_cb*,struct ibv_wc*) ;
 int stderr ;

__attribute__((used)) static int rping_cq_event_handler(struct rping_cb *cb)
{
 struct ibv_wc wc;
 struct ibv_recv_wr *bad_wr;
 int ret;
 int flushed = 0;

 while ((ret = ibv_poll_cq(cb->cq, 1, &wc)) == 1) {
  ret = 0;

  if (wc.status) {
   if (wc.status == IBV_WC_WR_FLUSH_ERR) {
    flushed = 1;
    continue;

   }
   fprintf(stderr,
    "cq completion failed status %d\n",
    wc.status);
   ret = -1;
   goto error;
  }

  switch (wc.opcode) {
  case 128:
   DEBUG_LOG("send completion\n");
   break;

  case 130:
   DEBUG_LOG("rdma write completion\n");
   cb->state = RDMA_WRITE_COMPLETE;
   sem_post(&cb->sem);
   break;

  case 131:
   DEBUG_LOG("rdma read completion\n");
   cb->state = RDMA_READ_COMPLETE;
   sem_post(&cb->sem);
   break;

  case 129:
   DEBUG_LOG("recv completion\n");
   ret = cb->server ? server_recv(cb, &wc) :
        client_recv(cb, &wc);
   if (ret) {
    fprintf(stderr, "recv wc error: %d\n", ret);
    goto error;
   }

   ret = ibv_post_recv(cb->qp, &cb->rq_wr, &bad_wr);
   if (ret) {
    fprintf(stderr, "post recv error: %d\n", ret);
    goto error;
   }
   sem_post(&cb->sem);
   break;

  default:
   DEBUG_LOG("unknown!!!!! completion\n");
   ret = -1;
   goto error;
  }
 }
 if (ret) {
  fprintf(stderr, "poll error %d\n", ret);
  goto error;
 }
 return flushed;

error:
 cb->state = ERROR;
 sem_post(&cb->sem);
 return ret;
}
