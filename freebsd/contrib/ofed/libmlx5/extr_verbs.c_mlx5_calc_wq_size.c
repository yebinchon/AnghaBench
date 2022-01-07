
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ offset; } ;
struct TYPE_3__ {int offset; } ;
struct mlx5_qp {TYPE_2__ rq; TYPE_1__ sq; } ;
struct mlx5_context {int dummy; } ;
struct ibv_qp_init_attr_ex {int dummy; } ;


 int mlx5_calc_rq_size (struct mlx5_context*,struct ibv_qp_init_attr_ex*,struct mlx5_qp*) ;
 int mlx5_calc_sq_size (struct mlx5_context*,struct ibv_qp_init_attr_ex*,struct mlx5_qp*) ;

__attribute__((used)) static int mlx5_calc_wq_size(struct mlx5_context *ctx,
        struct ibv_qp_init_attr_ex *attr,
        struct mlx5_qp *qp)
{
 int ret;
 int result;

 ret = mlx5_calc_sq_size(ctx, attr, qp);
 if (ret < 0)
  return ret;

 result = ret;
 ret = mlx5_calc_rq_size(ctx, attr, qp);
 if (ret < 0)
  return ret;

 result += ret;

 qp->sq.offset = ret;
 qp->rq.offset = 0;

 return result;
}
