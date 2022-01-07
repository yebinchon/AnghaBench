
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rping_cb {int cqthread; int child_cm_id; int rq_wr; int qp; } ;
struct ibv_recv_wr {int dummy; } ;


 int cq_thread ;
 int fprintf (int ,char*,int) ;
 int free_cb (struct rping_cb*) ;
 int ibv_post_recv (int ,int *,struct ibv_recv_wr**) ;
 int perror (char*) ;
 int pthread_cancel (int ) ;
 int pthread_create (int *,int *,int ,struct rping_cb*) ;
 int pthread_join (int ,int *) ;
 int rdma_destroy_id (int ) ;
 int rdma_disconnect (int ) ;
 int rping_accept (struct rping_cb*) ;
 int rping_free_buffers (struct rping_cb*) ;
 int rping_free_qp (struct rping_cb*) ;
 int rping_setup_buffers (struct rping_cb*) ;
 int rping_setup_qp (struct rping_cb*,int ) ;
 int rping_test_server (struct rping_cb*) ;
 int stderr ;

__attribute__((used)) static void *rping_persistent_server_thread(void *arg)
{
 struct rping_cb *cb = arg;
 struct ibv_recv_wr *bad_wr;
 int ret;

 ret = rping_setup_qp(cb, cb->child_cm_id);
 if (ret) {
  fprintf(stderr, "setup_qp failed: %d\n", ret);
  goto err0;
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

 ret = rping_accept(cb);
 if (ret) {
  fprintf(stderr, "connect error %d\n", ret);
  goto err3;
 }

 rping_test_server(cb);
 rdma_disconnect(cb->child_cm_id);
 pthread_join(cb->cqthread, ((void*)0));
 rping_free_buffers(cb);
 rping_free_qp(cb);
 rdma_destroy_id(cb->child_cm_id);
 free_cb(cb);
 return ((void*)0);
err3:
 pthread_cancel(cb->cqthread);
 pthread_join(cb->cqthread, ((void*)0));
err2:
 rping_free_buffers(cb);
err1:
 rping_free_qp(cb);
err0:
 free_cb(cb);
 return ((void*)0);
}
