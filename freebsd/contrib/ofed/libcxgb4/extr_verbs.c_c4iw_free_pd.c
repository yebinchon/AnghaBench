
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_pd {int dummy; } ;


 int free (struct ibv_pd*) ;
 int ibv_cmd_dealloc_pd (struct ibv_pd*) ;

int c4iw_free_pd(struct ibv_pd *pd)
{
 int ret;

 ret = ibv_cmd_dealloc_pd(pd);
 if (ret)
  return ret;

 free(pd);
 return 0;
}
