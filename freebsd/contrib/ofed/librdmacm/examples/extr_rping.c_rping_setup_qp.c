
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rping_cb {int pd; int channel; int cq; int qp; } ;
struct rdma_cm_id {int verbs; } ;


 int DEBUG_LOG (char*,int ) ;
 int RPING_SQ_DEPTH ;
 int errno ;
 int fprintf (int ,char*) ;
 int ibv_alloc_pd (int ) ;
 int ibv_create_comp_channel (int ) ;
 int ibv_create_cq (int ,int,struct rping_cb*,int ,int ) ;
 int ibv_dealloc_pd (int ) ;
 int ibv_destroy_comp_channel (int ) ;
 int ibv_destroy_cq (int ) ;
 int ibv_req_notify_cq (int ,int ) ;
 int perror (char*) ;
 int rping_create_qp (struct rping_cb*) ;
 int stderr ;

__attribute__((used)) static int rping_setup_qp(struct rping_cb *cb, struct rdma_cm_id *cm_id)
{
 int ret;

 cb->pd = ibv_alloc_pd(cm_id->verbs);
 if (!cb->pd) {
  fprintf(stderr, "ibv_alloc_pd failed\n");
  return errno;
 }
 DEBUG_LOG("created pd %p\n", cb->pd);

 cb->channel = ibv_create_comp_channel(cm_id->verbs);
 if (!cb->channel) {
  fprintf(stderr, "ibv_create_comp_channel failed\n");
  ret = errno;
  goto err1;
 }
 DEBUG_LOG("created channel %p\n", cb->channel);

 cb->cq = ibv_create_cq(cm_id->verbs, RPING_SQ_DEPTH * 2, cb,
    cb->channel, 0);
 if (!cb->cq) {
  fprintf(stderr, "ibv_create_cq failed\n");
  ret = errno;
  goto err2;
 }
 DEBUG_LOG("created cq %p\n", cb->cq);

 ret = ibv_req_notify_cq(cb->cq, 0);
 if (ret) {
  fprintf(stderr, "ibv_create_cq failed\n");
  ret = errno;
  goto err3;
 }

 ret = rping_create_qp(cb);
 if (ret) {
  perror("rdma_create_qp");
  goto err3;
 }
 DEBUG_LOG("created qp %p\n", cb->qp);
 return 0;

err3:
 ibv_destroy_cq(cb->cq);
err2:
 ibv_destroy_comp_channel(cb->channel);
err1:
 ibv_dealloc_pd(cb->pd);
 return ret;
}
