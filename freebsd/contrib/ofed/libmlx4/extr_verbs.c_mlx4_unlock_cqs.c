
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_cq {scalar_t__ cqn; int lock; } ;
struct ibv_qp {int recv_cq; int send_cq; } ;


 int pthread_spin_unlock (int *) ;
 struct mlx4_cq* to_mcq (int ) ;

__attribute__((used)) static void mlx4_unlock_cqs(struct ibv_qp *qp)
{
 struct mlx4_cq *send_cq = to_mcq(qp->send_cq);
 struct mlx4_cq *recv_cq = to_mcq(qp->recv_cq);


 if (!qp->send_cq || !qp->recv_cq) {
  if (qp->send_cq)
   pthread_spin_unlock(&send_cq->lock);
  else if (qp->recv_cq)
   pthread_spin_unlock(&recv_cq->lock);
 } else if (send_cq == recv_cq) {
  pthread_spin_unlock(&send_cq->lock);
 } else if (send_cq->cqn < recv_cq->cqn) {
  pthread_spin_unlock(&recv_cq->lock);
  pthread_spin_unlock(&send_cq->lock);
 } else {
  pthread_spin_unlock(&send_cq->lock);
  pthread_spin_unlock(&recv_cq->lock);
 }
}
