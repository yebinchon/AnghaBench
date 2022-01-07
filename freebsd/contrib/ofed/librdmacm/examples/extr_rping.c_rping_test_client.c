
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rping_cb {int count; int state; unsigned char* start_buf; int size; char* rdma_buf; scalar_t__ verbose; scalar_t__ validate; int sem; int sq_wr; int qp; int rdma_mr; int start_mr; } ;
struct ibv_send_wr {int dummy; } ;


 int DISCONNECTED ;
 int RDMA_READ_ADV ;
 int RDMA_WRITE_ADV ;
 int RDMA_WRITE_COMPLETE ;
 char* RPING_MSG_FMT ;
 int fprintf (int ,char*,...) ;
 int ibv_post_send (int ,int *,struct ibv_send_wr**) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int printf (char*,char*) ;
 int rping_format_send (struct rping_cb*,char*,int ) ;
 int sem_wait (int *) ;
 int snprintf (unsigned char*,int,char*,int) ;
 int stderr ;

__attribute__((used)) static int rping_test_client(struct rping_cb *cb)
{
 int ping, start, cc, i, ret = 0;
 struct ibv_send_wr *bad_wr;
 unsigned char c;

 start = 65;
 for (ping = 0; !cb->count || ping < cb->count; ping++) {
  cb->state = RDMA_READ_ADV;


  cc = snprintf(cb->start_buf, cb->size, RPING_MSG_FMT, ping);
  for (i = cc, c = start; i < cb->size; i++) {
   cb->start_buf[i] = c;
   c++;
   if (c > 122)
    c = 65;
  }
  start++;
  if (start > 122)
   start = 65;
  cb->start_buf[cb->size - 1] = 0;

  rping_format_send(cb, cb->start_buf, cb->start_mr);
  ret = ibv_post_send(cb->qp, &cb->sq_wr, &bad_wr);
  if (ret) {
   fprintf(stderr, "post send error %d\n", ret);
   break;
  }


  sem_wait(&cb->sem);
  if (cb->state != RDMA_WRITE_ADV) {
   fprintf(stderr, "wait for RDMA_WRITE_ADV state %d\n",
    cb->state);
   ret = -1;
   break;
  }

  rping_format_send(cb, cb->rdma_buf, cb->rdma_mr);
  ret = ibv_post_send(cb->qp, &cb->sq_wr, &bad_wr);
  if (ret) {
   fprintf(stderr, "post send error %d\n", ret);
   break;
  }


  sem_wait(&cb->sem);
  if (cb->state != RDMA_WRITE_COMPLETE) {
   fprintf(stderr, "wait for RDMA_WRITE_COMPLETE state %d\n",
    cb->state);
   ret = -1;
   break;
  }

  if (cb->validate)
   if (memcmp(cb->start_buf, cb->rdma_buf, cb->size)) {
    fprintf(stderr, "data mismatch!\n");
    ret = -1;
    break;
   }

  if (cb->verbose)
   printf("ping data: %s\n", cb->rdma_buf);
 }

 return (cb->state == DISCONNECTED) ? 0 : ret;
}
