
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ibv_qp_attr {int qp_state; } ;
struct ibv_qp {int state; TYPE_2__* context; } ;
struct TYPE_3__ {int (* modify_qp ) (struct ibv_qp*,struct ibv_qp_attr*,int) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int IBV_QP_STATE ;
 int stub1 (struct ibv_qp*,struct ibv_qp_attr*,int) ;

int __ibv_modify_qp(struct ibv_qp *qp, struct ibv_qp_attr *attr,
      int attr_mask)
{
 int ret;

 ret = qp->context->ops.modify_qp(qp, attr, attr_mask);
 if (ret)
  return ret;

 if (attr_mask & IBV_QP_STATE)
  qp->state = attr->qp_state;

 return 0;
}
