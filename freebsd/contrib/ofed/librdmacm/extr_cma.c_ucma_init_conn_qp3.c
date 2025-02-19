
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ibv_qp_attr {scalar_t__ qp_access_flags; int qp_state; int port_num; int pkey_index; } ;
struct ibv_qp {int dummy; } ;
struct TYPE_9__ {int pkey; } ;
struct TYPE_8__ {TYPE_4__ ibaddr; } ;
struct TYPE_10__ {TYPE_3__ addr; } ;
struct TYPE_6__ {TYPE_5__ addr; } ;
struct TYPE_7__ {int port_num; TYPE_1__ route; } ;
struct cma_id_private {TYPE_2__ id; int cma_dev; } ;


 int IBV_QPS_INIT ;
 int IBV_QP_ACCESS_FLAGS ;
 int IBV_QP_PKEY_INDEX ;
 int IBV_QP_PORT ;
 int IBV_QP_STATE ;
 int ibv_modify_qp (struct ibv_qp*,struct ibv_qp_attr*,int) ;
 int rdma_seterrno (int) ;
 int ucma_find_pkey (int ,int ,int ,int *) ;

__attribute__((used)) static int ucma_init_conn_qp3(struct cma_id_private *id_priv, struct ibv_qp *qp)
{
 struct ibv_qp_attr qp_attr;
 int ret;

 ret = ucma_find_pkey(id_priv->cma_dev, id_priv->id.port_num,
        id_priv->id.route.addr.addr.ibaddr.pkey,
        &qp_attr.pkey_index);
 if (ret)
  return ret;

 qp_attr.port_num = id_priv->id.port_num;
 qp_attr.qp_state = IBV_QPS_INIT;
 qp_attr.qp_access_flags = 0;

 ret = ibv_modify_qp(qp, &qp_attr, IBV_QP_STATE | IBV_QP_ACCESS_FLAGS |
       IBV_QP_PKEY_INDEX | IBV_QP_PORT);
 return rdma_seterrno(ret);
}
