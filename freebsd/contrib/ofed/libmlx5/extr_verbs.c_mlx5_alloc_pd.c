
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_pd {int dummy; } ;
struct mlx5_pd {struct ibv_pd ibv_pd; int pdn; } ;
struct mlx5_alloc_pd_resp {int pdn; int ibv_resp; } ;
struct ibv_context {int dummy; } ;
struct ibv_alloc_pd {int dummy; } ;


 struct mlx5_pd* calloc (int,int) ;
 int free (struct mlx5_pd*) ;
 scalar_t__ ibv_cmd_alloc_pd (struct ibv_context*,struct ibv_pd*,struct ibv_alloc_pd*,int,int *,int) ;

struct ibv_pd *mlx5_alloc_pd(struct ibv_context *context)
{
 struct ibv_alloc_pd cmd;
 struct mlx5_alloc_pd_resp resp;
 struct mlx5_pd *pd;

 pd = calloc(1, sizeof *pd);
 if (!pd)
  return ((void*)0);

 if (ibv_cmd_alloc_pd(context, &pd->ibv_pd, &cmd, sizeof cmd,
        &resp.ibv_resp, sizeof resp)) {
  free(pd);
  return ((void*)0);
 }

 pd->pdn = resp.pdn;

 return &pd->ibv_pd;
}
