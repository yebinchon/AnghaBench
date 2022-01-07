
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rping_cb {int cqthread; int cm_id; int rq_wr; int qp; } ;
struct ibv_recv_wr {int dummy; } ;


 int cq_thread ;
 int fprintf (int ,char*,int) ;
 int ibv_post_recv (int ,int *,struct ibv_recv_wr**) ;
 int perror (char*) ;
 int pthread_create (int *,int *,int ,struct rping_cb*) ;
 int pthread_join (int ,int *) ;
 int rdma_disconnect (int ) ;
 int rping_bind_client (struct rping_cb*) ;
 int rping_connect_client (struct rping_cb*) ;
 int rping_free_buffers (struct rping_cb*) ;
 int rping_free_qp (struct rping_cb*) ;
 int rping_setup_buffers (struct rping_cb*) ;
 int rping_setup_qp (struct rping_cb*,int ) ;
 int rping_test_client (struct rping_cb*) ;
 int stderr ;

__attribute__((used)) static int rping_run_client(struct rping_cb *cb)
{
 struct ibv_recv_wr *bad_wr;
 int ret;

 ret = rping_bind_client(cb);
 if (ret)
  return ret;

 ret = rping_setup_qp(cb, cb->cm_id);
 if (ret) {
  fprintf(stderr, "setup_qp failed: %d\n", ret);
  return ret;
 }

 ret = rping_setup_buffers(cb);
 if (ret) {
  fprintf(stderr, "rping_setup_buffers failed: %d\n", ret);
  goto err1;
 }

 ret = ibv_post_recv(cb->qp, &cb->rq_wr, &bad_wr);
 if (ret) {
  fprintf(stderr, "ibv_post_recv failed: %d\n", ret);
  goto err2;
 }

 ret = pthread_create(&cb->cqthread, ((void*)0), cq_thread, cb);
 if (ret) {
  perror("pthread_create");
  goto err2;
 }

 ret = rping_connect_client(cb);
 if (ret) {
  fprintf(stderr, "connect error %d\n", ret);
  goto err3;
 }

 ret = rping_test_client(cb);
 if (ret) {
  fprintf(stderr, "rping client failed: %d\n", ret);
  goto err4;
 }

 ret = 0;
err4:
 rdma_disconnect(cb->cm_id);
err3:
 pthread_join(cb->cqthread, ((void*)0));
err2:
 rping_free_buffers(cb);
err1:
 rping_free_qp(cb);

 return ret;
}
