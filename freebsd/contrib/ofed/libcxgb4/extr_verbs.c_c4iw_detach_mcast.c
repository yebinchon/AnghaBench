
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ibv_gid {int dummy; } ibv_gid ;
typedef int uint16_t ;
struct ibv_qp {int dummy; } ;
struct c4iw_qp {int lock; int wq; } ;


 int c4iw_flush_qp (struct c4iw_qp*) ;
 int ibv_cmd_detach_mcast (struct ibv_qp*,union ibv_gid const*,int ) ;
 int pthread_spin_lock (int *) ;
 int pthread_spin_unlock (int *) ;
 scalar_t__ t4_wq_in_error (int *) ;
 struct c4iw_qp* to_c4iw_qp (struct ibv_qp*) ;

int c4iw_detach_mcast(struct ibv_qp *ibqp, const union ibv_gid *gid,
        uint16_t lid)
{
 struct c4iw_qp *qhp = to_c4iw_qp(ibqp);
 int ret;

 pthread_spin_lock(&qhp->lock);
 if (t4_wq_in_error(&qhp->wq))
  c4iw_flush_qp(qhp);
 ret = ibv_cmd_detach_mcast(ibqp, gid, lid);
 pthread_spin_unlock(&qhp->lock);
 return ret;
}
