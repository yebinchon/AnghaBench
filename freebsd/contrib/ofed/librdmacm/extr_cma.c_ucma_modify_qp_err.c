
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_cm_id {int qp; } ;
struct ibv_qp_attr {int qp_state; } ;


 int IBV_QPS_ERR ;
 int IBV_QP_STATE ;
 int ibv_modify_qp (int ,struct ibv_qp_attr*,int ) ;
 int rdma_seterrno (int ) ;

__attribute__((used)) static int ucma_modify_qp_err(struct rdma_cm_id *id)
{
 struct ibv_qp_attr qp_attr;

 if (!id->qp)
  return 0;

 qp_attr.qp_state = IBV_QPS_ERR;
 return rdma_seterrno(ibv_modify_qp(id->qp, &qp_attr, IBV_QP_STATE));
}
