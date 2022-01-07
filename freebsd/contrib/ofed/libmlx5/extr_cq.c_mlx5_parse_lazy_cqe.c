
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_cqe64 {int dummy; } ;
struct mlx5_cq {int cur_srq; int cur_rsc; } ;


 int mlx5_parse_cqe (struct mlx5_cq*,struct mlx5_cqe64*,void*,int *,int *,int *,int,int) ;

__attribute__((used)) static inline int mlx5_parse_lazy_cqe(struct mlx5_cq *cq,
          struct mlx5_cqe64 *cqe64,
          void *cqe, int cqe_ver)
{
 return mlx5_parse_cqe(cq, cqe64, cqe, &cq->cur_rsc, &cq->cur_srq, ((void*)0), cqe_ver, 1);
}
