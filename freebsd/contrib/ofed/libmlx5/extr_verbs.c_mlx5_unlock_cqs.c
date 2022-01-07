
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_cq {scalar_t__ cqn; int lock; } ;
struct ibv_qp {int recv_cq; int send_cq; } ;


 int mlx5_spin_unlock (int *) ;
 struct mlx5_cq* to_mcq (int ) ;

__attribute__((used)) static void mlx5_unlock_cqs(struct ibv_qp *qp)
{
 struct mlx5_cq *send_cq = to_mcq(qp->send_cq);
 struct mlx5_cq *recv_cq = to_mcq(qp->recv_cq);

 if (send_cq && recv_cq) {
  if (send_cq == recv_cq) {
   mlx5_spin_unlock(&send_cq->lock);
  } else if (send_cq->cqn < recv_cq->cqn) {
   mlx5_spin_unlock(&recv_cq->lock);
   mlx5_spin_unlock(&send_cq->lock);
  } else {
   mlx5_spin_unlock(&send_cq->lock);
   mlx5_spin_unlock(&recv_cq->lock);
  }
 } else if (send_cq) {
  mlx5_spin_unlock(&send_cq->lock);
 } else if (recv_cq) {
  mlx5_spin_unlock(&recv_cq->lock);
 }
}
