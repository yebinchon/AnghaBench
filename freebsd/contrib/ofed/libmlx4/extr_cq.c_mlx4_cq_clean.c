
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mlx4_srq {int dummy; } ;
struct mlx4_cq {int lock; } ;


 int __mlx4_cq_clean (struct mlx4_cq*,int ,struct mlx4_srq*) ;
 int pthread_spin_lock (int *) ;
 int pthread_spin_unlock (int *) ;

void mlx4_cq_clean(struct mlx4_cq *cq, uint32_t qpn, struct mlx4_srq *srq)
{
 pthread_spin_lock(&cq->lock);
 __mlx4_cq_clean(cq, qpn, srq);
 pthread_spin_unlock(&cq->lock);
}
