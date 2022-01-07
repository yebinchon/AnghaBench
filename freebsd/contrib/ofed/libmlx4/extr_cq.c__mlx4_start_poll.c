
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_cqe {int dummy; } ;
struct mlx4_cq {int lock; int * cur_qp; } ;
struct ibv_poll_cq_attr {int comp_mask; } ;
struct ibv_cq_ex {int dummy; } ;


 int CQ_EMPTY ;
 int EINVAL ;
 int ENOENT ;
 int ibv_cq_ex_to_cq (struct ibv_cq_ex*) ;
 int mlx4_get_next_cqe (struct mlx4_cq*,struct mlx4_cqe**) ;
 int mlx4_parse_lazy_cqe (struct mlx4_cq*,struct mlx4_cqe*) ;
 int pthread_spin_lock (int *) ;
 int pthread_spin_unlock (int *) ;
 struct mlx4_cq* to_mcq (int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline int _mlx4_start_poll(struct ibv_cq_ex *ibcq,
       struct ibv_poll_cq_attr *attr,
       int lock)
{
 struct mlx4_cq *cq = to_mcq(ibv_cq_ex_to_cq(ibcq));
 struct mlx4_cqe *cqe;
 int err;

 if (unlikely(attr->comp_mask))
  return EINVAL;

 if (lock)
  pthread_spin_lock(&cq->lock);

 cq->cur_qp = ((void*)0);

 err = mlx4_get_next_cqe(cq, &cqe);
 if (err == CQ_EMPTY) {
  if (lock)
   pthread_spin_unlock(&cq->lock);
  return ENOENT;
 }

 err = mlx4_parse_lazy_cqe(cq, cqe);
 if (lock && err)
  pthread_spin_unlock(&cq->lock);

 return err;
}
