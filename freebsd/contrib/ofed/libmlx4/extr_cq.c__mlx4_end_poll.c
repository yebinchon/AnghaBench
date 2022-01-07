
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_cq {int lock; } ;
struct ibv_cq_ex {int dummy; } ;


 int ibv_cq_ex_to_cq (struct ibv_cq_ex*) ;
 int mlx4_update_cons_index (struct mlx4_cq*) ;
 int pthread_spin_unlock (int *) ;
 struct mlx4_cq* to_mcq (int ) ;

__attribute__((used)) static inline void _mlx4_end_poll(struct ibv_cq_ex *ibcq, int lock)
{
 struct mlx4_cq *cq = to_mcq(ibv_cq_ex_to_cq(ibcq));

 mlx4_update_cons_index(cq);

 if (lock)
  pthread_spin_unlock(&cq->lock);
}
