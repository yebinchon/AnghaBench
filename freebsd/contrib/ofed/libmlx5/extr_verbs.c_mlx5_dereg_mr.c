
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_mr {int dummy; } ;
struct ibv_mr {int dummy; } ;


 int free (struct mlx5_mr*) ;
 int ibv_cmd_dereg_mr (struct ibv_mr*) ;
 struct mlx5_mr* to_mmr (struct ibv_mr*) ;

int mlx5_dereg_mr(struct ibv_mr *ibmr)
{
 int ret;
 struct mlx5_mr *mr = to_mmr(ibmr);

 ret = ibv_cmd_dereg_mr(ibmr);
 if (ret)
  return ret;

 free(mr);
 return 0;
}
