
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef void* u16 ;
struct ibv_qp_attr {void* rq_psn; void* sq_psn; } ;
struct ibv_modify_qp {int dummy; } ;
struct TYPE_3__ {scalar_t__ qid; } ;
struct TYPE_4__ {TYPE_1__ sq; } ;
struct c4iw_qp {int ibv_qp; TYPE_2__ wq; } ;


 int IBV_QP_RQ_PSN ;
 int IBV_QP_SQ_PSN ;
 int assert (int) ;
 int ibv_cmd_modify_qp (int *,struct ibv_qp_attr*,int,struct ibv_modify_qp*,int) ;
 int udma_to_device_barrier () ;

__attribute__((used)) static void ring_kernel_db(struct c4iw_qp *qhp, u32 qid, u16 idx)
{
 struct ibv_modify_qp cmd = {};
 struct ibv_qp_attr attr;
 int mask;
 int __attribute__((unused)) ret;



 udma_to_device_barrier();
 if (qid == qhp->wq.sq.qid) {
  attr.sq_psn = idx;
  mask = IBV_QP_SQ_PSN;
 } else {
  attr.rq_psn = idx;
  mask = IBV_QP_RQ_PSN;
 }
 ret = ibv_cmd_modify_qp(&qhp->ibv_qp, &attr, mask, &cmd, sizeof cmd);
 assert(!ret);
}
