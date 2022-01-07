
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ibv_qp_init_attr_1_0 {int sq_sig_all; int cap; int qp_type; int srq; int recv_cq; int send_cq; int qp_context; } ;
struct ibv_qp_init_attr {int sq_sig_all; int cap; int qp_type; TYPE_3__* srq; TYPE_2__* recv_cq; TYPE_1__* send_cq; } ;
struct ibv_qp_attr {int dummy; } ;
struct ibv_qp_1_0 {int qp_context; int real_qp; } ;
struct TYPE_6__ {int srq_context; } ;
struct TYPE_5__ {int cq_context; } ;
struct TYPE_4__ {int cq_context; } ;


 int ibv_query_qp (int ,struct ibv_qp_attr*,int,struct ibv_qp_init_attr*) ;

int __ibv_query_qp_1_0(struct ibv_qp_1_0 *qp, struct ibv_qp_attr *attr,
         int attr_mask,
         struct ibv_qp_init_attr_1_0 *init_attr)
{
 struct ibv_qp_init_attr real_init_attr;
 int ret;

 ret = ibv_query_qp(qp->real_qp, attr, attr_mask, &real_init_attr);
 if (ret)
  return ret;

 init_attr->qp_context = qp->qp_context;
 init_attr->send_cq = real_init_attr.send_cq->cq_context;
 init_attr->recv_cq = real_init_attr.recv_cq->cq_context;
 init_attr->srq = real_init_attr.srq->srq_context;
 init_attr->qp_type = real_init_attr.qp_type;
 init_attr->cap = real_init_attr.cap;
 init_attr->sq_sig_all = real_init_attr.sq_sig_all;

 return 0;
}
