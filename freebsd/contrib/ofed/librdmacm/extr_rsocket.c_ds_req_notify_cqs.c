
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rsocket {struct ds_qp* qp_list; } ;
struct ds_qp {int cq_armed; TYPE_1__* cm_id; } ;
struct TYPE_2__ {int recv_cq; } ;


 struct ds_qp* ds_next_qp (struct ds_qp*) ;
 int ibv_req_notify_cq (int ,int ) ;

__attribute__((used)) static void ds_req_notify_cqs(struct rsocket *rs)
{
 struct ds_qp *qp;

 if (!(qp = rs->qp_list))
  return;

 do {
  if (!qp->cq_armed) {
   ibv_req_notify_cq(qp->cm_id->recv_cq, 0);
   qp->cq_armed = 1;
  }
  qp = ds_next_qp(qp);
 } while (qp != rs->qp_list);
}
