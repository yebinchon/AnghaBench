
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_wq {unsigned int head; unsigned int tail; unsigned int max_post; } ;
struct mlx4_cq {int lock; } ;


 int pthread_spin_lock (int *) ;
 int pthread_spin_unlock (int *) ;

__attribute__((used)) static int wq_overflow(struct mlx4_wq *wq, int nreq, struct mlx4_cq *cq)
{
 unsigned cur;

 cur = wq->head - wq->tail;
 if (cur + nreq < wq->max_post)
  return 0;

 pthread_spin_lock(&cq->lock);
 cur = wq->head - wq->tail;
 pthread_spin_unlock(&cq->lock);

 return cur + nreq >= wq->max_post;
}
