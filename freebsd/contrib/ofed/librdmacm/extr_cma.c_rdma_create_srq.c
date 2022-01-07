
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_cm_id {scalar_t__ qp_type; } ;
struct ibv_srq_init_attr_ex {int comp_mask; struct ibv_pd* pd; int srq_type; } ;
struct ibv_srq_init_attr {int comp_mask; struct ibv_pd* pd; int srq_type; } ;
struct ibv_pd {int dummy; } ;


 scalar_t__ IBV_QPT_XRC_RECV ;
 int IBV_SRQT_BASIC ;
 int IBV_SRQT_XRC ;
 int IBV_SRQ_INIT_ATTR_PD ;
 int IBV_SRQ_INIT_ATTR_TYPE ;
 int memcpy (struct ibv_srq_init_attr_ex*,struct ibv_srq_init_attr_ex*,int) ;
 int rdma_create_srq_ex (struct rdma_cm_id*,struct ibv_srq_init_attr_ex*) ;

int rdma_create_srq(struct rdma_cm_id *id, struct ibv_pd *pd,
      struct ibv_srq_init_attr *attr)
{
 struct ibv_srq_init_attr_ex attr_ex;
 int ret;

 memcpy(&attr_ex, attr, sizeof(*attr));
 attr_ex.comp_mask = IBV_SRQ_INIT_ATTR_TYPE | IBV_SRQ_INIT_ATTR_PD;
 if (id->qp_type == IBV_QPT_XRC_RECV) {
  attr_ex.srq_type = IBV_SRQT_XRC;
 } else {
  attr_ex.srq_type = IBV_SRQT_BASIC;
 }
 attr_ex.pd = pd;
 ret = rdma_create_srq_ex(id, &attr_ex);
 memcpy(attr, &attr_ex, sizeof(*attr));
 return ret;
}
