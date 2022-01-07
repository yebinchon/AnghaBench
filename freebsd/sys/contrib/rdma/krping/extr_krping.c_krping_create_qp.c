
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct krping_cb {TYPE_2__* cm_id; int qp; int pd; TYPE_2__* child_cm_id; scalar_t__ server; int cq; int txdepth; } ;
struct TYPE_3__ {int max_recv_wr; int max_recv_sge; int max_send_sge; int max_send_wr; } ;
struct ib_qp_init_attr {int sq_sig_type; int recv_cq; int send_cq; int qp_type; TYPE_1__ cap; } ;
typedef int init_attr ;
struct TYPE_4__ {int qp; } ;


 int IB_QPT_RC ;
 int IB_SIGNAL_REQ_WR ;
 int memset (struct ib_qp_init_attr*,int ,int) ;
 int rdma_create_qp (TYPE_2__*,int ,struct ib_qp_init_attr*) ;

__attribute__((used)) static int krping_create_qp(struct krping_cb *cb)
{
 struct ib_qp_init_attr init_attr;
 int ret;

 memset(&init_attr, 0, sizeof(init_attr));
 init_attr.cap.max_send_wr = cb->txdepth;
 init_attr.cap.max_recv_wr = 2;


 init_attr.cap.max_send_wr++;
 init_attr.cap.max_recv_wr++;

 init_attr.cap.max_recv_sge = 1;
 init_attr.cap.max_send_sge = 1;
 init_attr.qp_type = IB_QPT_RC;
 init_attr.send_cq = cb->cq;
 init_attr.recv_cq = cb->cq;
 init_attr.sq_sig_type = IB_SIGNAL_REQ_WR;

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
