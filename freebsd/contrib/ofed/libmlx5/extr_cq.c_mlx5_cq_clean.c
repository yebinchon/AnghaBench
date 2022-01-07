
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mlx5_srq {int dummy; } ;
struct mlx5_cq {int lock; } ;


 int __mlx5_cq_clean (struct mlx5_cq*,int ,struct mlx5_srq*) ;
 int mlx5_spin_lock (int *) ;
 int mlx5_spin_unlock (int *) ;

void mlx5_cq_clean(struct mlx5_cq *cq, uint32_t qpn, struct mlx5_srq *srq)
{
 mlx5_spin_lock(&cq->lock);
 __mlx5_cq_clean(cq, qpn, srq);
 mlx5_spin_unlock(&cq->lock);
}
