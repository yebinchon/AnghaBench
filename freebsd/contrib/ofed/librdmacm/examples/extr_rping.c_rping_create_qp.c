
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rping_cb {TYPE_2__* cm_id; int qp; int pd; TYPE_2__* child_cm_id; scalar_t__ server; int cq; } ;
struct TYPE_3__ {int max_recv_wr; int max_recv_sge; int max_send_sge; int max_send_wr; } ;
struct ibv_qp_init_attr {int recv_cq; int send_cq; int qp_type; TYPE_1__ cap; } ;
typedef int init_attr ;
struct TYPE_4__ {int qp; } ;


 int IBV_QPT_RC ;
 int RPING_SQ_DEPTH ;
 int memset (struct ibv_qp_init_attr*,int ,int) ;
 int rdma_create_qp (TYPE_2__*,int ,struct ibv_qp_init_attr*) ;

__attribute__((used)) static int rping_create_qp(struct rping_cb *cb)
{
 struct ibv_qp_init_attr init_attr;
 int ret;

 memset(&init_attr, 0, sizeof(init_attr));
 init_attr.cap.max_send_wr = RPING_SQ_DEPTH;
 init_attr.cap.max_recv_wr = 2;
 init_attr.cap.max_recv_sge = 1;
 init_attr.cap.max_send_sge = 1;
 init_attr.qp_type = IBV_QPT_RC;
 init_attr.send_cq = cb->cq;
 init_attr.recv_cq = cb->cq;

 if (cb->server) {
  ret = rdma_create_qp(cb->child_cm_id, cb->pd, &init_attr);
  if (!ret)
   cb->qp = cb->child_cm_id->qp;
 } else {
  ret = rdma_create_qp(cb->cm_id, cb->pd, &init_attr);
  if (!ret)
   cb->qp = cb->cm_id->qp;
 }

 return ret;
}
