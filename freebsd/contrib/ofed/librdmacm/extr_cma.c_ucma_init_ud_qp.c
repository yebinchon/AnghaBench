
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_qp_attr {scalar_t__ sq_psn; int qp_state; } ;
struct ibv_qp {int dummy; } ;
struct cma_id_private {int id; } ;


 int ERR (int) ;
 int IBV_QPS_INIT ;
 int IBV_QPS_RTR ;
 int IBV_QPS_RTS ;
 int IBV_QP_SQ_PSN ;
 int IBV_QP_STATE ;
 int abi_ver ;
 int ibv_modify_qp (struct ibv_qp*,struct ibv_qp_attr*,int) ;
 int rdma_init_qp_attr (int *,struct ibv_qp_attr*,int*) ;
 int rdma_seterrno (int) ;
 int ucma_init_ud_qp3 (struct cma_id_private*,struct ibv_qp*) ;

__attribute__((used)) static int ucma_init_ud_qp(struct cma_id_private *id_priv, struct ibv_qp *qp)
{
 struct ibv_qp_attr qp_attr;
 int qp_attr_mask, ret;

 if (abi_ver == 3)
  return ucma_init_ud_qp3(id_priv, qp);

 qp_attr.qp_state = IBV_QPS_INIT;
 ret = rdma_init_qp_attr(&id_priv->id, &qp_attr, &qp_attr_mask);
 if (ret)
  return ret;

 ret = ibv_modify_qp(qp, &qp_attr, qp_attr_mask);
 if (ret)
  return ERR(ret);

 qp_attr.qp_state = IBV_QPS_RTR;
 ret = ibv_modify_qp(qp, &qp_attr, IBV_QP_STATE);
 if (ret)
  return ERR(ret);

 qp_attr.qp_state = IBV_QPS_RTS;
 qp_attr.sq_psn = 0;
 ret = ibv_modify_qp(qp, &qp_attr, IBV_QP_STATE | IBV_QP_SQ_PSN);
 return rdma_seterrno(ret);
}
