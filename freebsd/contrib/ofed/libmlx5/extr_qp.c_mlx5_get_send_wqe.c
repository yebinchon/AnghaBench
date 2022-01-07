
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_qp {void* sq_start; } ;


 int MLX5_SEND_WQE_SHIFT ;

void *mlx5_get_send_wqe(struct mlx5_qp *qp, int n)
{
 return qp->sq_start + (n << MLX5_SEND_WQE_SHIFT);
}
