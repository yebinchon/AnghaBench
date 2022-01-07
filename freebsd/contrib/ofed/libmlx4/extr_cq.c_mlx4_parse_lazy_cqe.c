
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_cqe {int dummy; } ;
struct mlx4_cq {int cur_qp; } ;


 int mlx4_parse_cqe (struct mlx4_cq*,struct mlx4_cqe*,int *,int *,int) ;

__attribute__((used)) static inline int mlx4_parse_lazy_cqe(struct mlx4_cq *cq,
          struct mlx4_cqe *cqe)
{
 return mlx4_parse_cqe(cq, cqe, &cq->cur_qp, ((void*)0), 1);
}
