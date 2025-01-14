
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rdma_conn_param {scalar_t__ responder_resources; scalar_t__ initiator_depth; } ;
struct TYPE_3__ {scalar_t__ ps; int qp; } ;
struct cma_id_private {TYPE_2__* cma_dev; TYPE_1__ id; } ;
struct TYPE_4__ {scalar_t__ max_responder_resources; scalar_t__ max_initiator_depth; } ;


 int EINVAL ;
 int ERR (int ) ;
 scalar_t__ RDMA_MAX_INIT_DEPTH ;
 scalar_t__ RDMA_MAX_RESP_RES ;
 scalar_t__ RDMA_PS_TCP ;

__attribute__((used)) static int ucma_valid_param(struct cma_id_private *id_priv,
       struct rdma_conn_param *param)
{
 if (id_priv->id.ps != RDMA_PS_TCP)
  return 0;

 if (!id_priv->id.qp && !param)
  goto err;

 if (!param)
  return 0;

 if ((param->responder_resources != RDMA_MAX_RESP_RES) &&
     (param->responder_resources > id_priv->cma_dev->max_responder_resources))
  goto err;

 if ((param->initiator_depth != RDMA_MAX_INIT_DEPTH) &&
     (param->initiator_depth > id_priv->cma_dev->max_initiator_depth))
  goto err;

 return 0;
err:
 return ERR(EINVAL);
}
