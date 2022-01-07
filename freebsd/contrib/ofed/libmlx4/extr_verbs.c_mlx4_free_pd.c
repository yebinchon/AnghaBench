
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_pd {int dummy; } ;


 int free (int ) ;
 int ibv_cmd_dealloc_pd (struct ibv_pd*) ;
 int to_mpd (struct ibv_pd*) ;

int mlx4_free_pd(struct ibv_pd *pd)
{
 int ret;

 ret = ibv_cmd_dealloc_pd(pd);
 if (ret)
  return ret;

 free(to_mpd(pd));
 return 0;
}
