
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_query_qp {int dummy; } ;
struct ibv_qp_init_attr {int dummy; } ;
struct ibv_qp_attr {int dummy; } ;
struct ibv_qp {int dummy; } ;
struct c4iw_qp {int lock; int wq; } ;


 int c4iw_flush_qp (struct c4iw_qp*) ;
 int ibv_cmd_query_qp (struct ibv_qp*,struct ibv_qp_attr*,int,struct ibv_qp_init_attr*,struct ibv_query_qp*,int) ;
 int pthread_spin_lock (int *) ;
 int pthread_spin_unlock (int *) ;
 scalar_t__ t4_wq_in_error (int *) ;
 struct c4iw_qp* to_c4iw_qp (struct ibv_qp*) ;

int c4iw_query_qp(struct ibv_qp *ibqp, struct ibv_qp_attr *attr,
    int attr_mask, struct ibv_qp_init_attr *init_attr)
{
 struct ibv_query_qp cmd;
 struct c4iw_qp *qhp = to_c4iw_qp(ibqp);
 int ret;

 pthread_spin_lock(&qhp->lock);
 if (t4_wq_in_error(&qhp->wq))
  c4iw_flush_qp(qhp);
 ret = ibv_cmd_query_qp(ibqp, attr, attr_mask, init_attr, &cmd, sizeof cmd);
 pthread_spin_unlock(&qhp->lock);
 return ret;
}
