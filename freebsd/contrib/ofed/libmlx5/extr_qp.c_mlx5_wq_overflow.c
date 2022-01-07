
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_wq {unsigned int head; unsigned int tail; unsigned int max_post; } ;
struct mlx5_cq {int lock; } ;


 int mlx5_spin_lock (int *) ;
 int mlx5_spin_unlock (int *) ;

__attribute__((used)) static int mlx5_wq_overflow(struct mlx5_wq *wq, int nreq, struct mlx5_cq *cq)
{
 unsigned cur;

 cur = wq->head - wq->tail;
 if (cur + nreq < wq->max_post)
  return 0;

 mlx5_spin_lock(&cq->lock);
 cur = wq->head - wq->tail;
 mlx5_spin_unlock(&cq->lock);

 return cur + nreq >= wq->max_post;
}
