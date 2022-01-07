
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_wqe_srq_next_seg {int next_wqe_index; } ;
struct mlx4_srq {int tail; int lock; } ;


 struct mlx4_wqe_srq_next_seg* get_wqe (struct mlx4_srq*,int) ;
 int htobe16 (int) ;
 int pthread_spin_lock (int *) ;
 int pthread_spin_unlock (int *) ;

void mlx4_free_srq_wqe(struct mlx4_srq *srq, int ind)
{
 struct mlx4_wqe_srq_next_seg *next;

 pthread_spin_lock(&srq->lock);

 next = get_wqe(srq, srq->tail);
 next->next_wqe_index = htobe16(ind);
 srq->tail = ind;

 pthread_spin_unlock(&srq->lock);
}
