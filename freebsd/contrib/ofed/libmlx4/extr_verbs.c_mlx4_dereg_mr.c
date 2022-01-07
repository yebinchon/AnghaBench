
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_mr {int dummy; } ;


 int free (struct ibv_mr*) ;
 int ibv_cmd_dereg_mr (struct ibv_mr*) ;

int mlx4_dereg_mr(struct ibv_mr *mr)
{
 int ret;

 ret = ibv_cmd_dereg_mr(mr);
 if (ret)
  return ret;

 free(mr);
 return 0;
}
