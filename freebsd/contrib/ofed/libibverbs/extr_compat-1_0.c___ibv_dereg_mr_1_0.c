
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_mr_1_0 {int real_mr; } ;


 int free (struct ibv_mr_1_0*) ;
 int ibv_dereg_mr (int ) ;

int __ibv_dereg_mr_1_0(struct ibv_mr_1_0 *mr)
{
 int ret;

 ret = ibv_dereg_mr(mr->real_mr);
 if (ret)
  return ret;

 free(mr);
 return 0;
}
