
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_wqe_srq_next_seg {int next_wqe_index; } ;
struct mlx5_srq {int tail; int lock; } ;


 struct mlx5_wqe_srq_next_seg* get_wqe (struct mlx5_srq*,int) ;
 int htobe16 (int) ;
 int mlx5_spin_lock (int *) ;
 int mlx5_spin_unlock (int *) ;

void mlx5_free_srq_wqe(struct mlx5_srq *srq, int ind)
{
 struct mlx5_wqe_srq_next_seg *next;

 mlx5_spin_lock(&srq->lock);

 next = get_wqe(srq, srq->tail);
 next->next_wqe_index = htobe16(ind);
 srq->tail = ind;

 mlx5_spin_unlock(&srq->lock);
}
