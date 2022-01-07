
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_pd_1_0 {int real_pd; } ;


 int free (struct ibv_pd_1_0*) ;
 int ibv_dealloc_pd (int ) ;

int __ibv_dealloc_pd_1_0(struct ibv_pd_1_0 *pd)
{
 int ret;

 ret = ibv_dealloc_pd(pd->real_pd);
 if (ret)
  return ret;

 free(pd);
 return 0;
}
