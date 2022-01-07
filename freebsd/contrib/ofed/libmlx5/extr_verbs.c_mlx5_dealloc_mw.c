
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_mw {int dummy; } ;
struct ibv_dealloc_mw {int dummy; } ;
typedef int cmd ;


 int free (struct ibv_mw*) ;
 int ibv_cmd_dealloc_mw (struct ibv_mw*,struct ibv_dealloc_mw*,int) ;

int mlx5_dealloc_mw(struct ibv_mw *mw)
{
 int ret;
 struct ibv_dealloc_mw cmd;

 ret = ibv_cmd_dealloc_mw(mw, &cmd, sizeof(cmd));
 if (ret)
  return ret;

 free(mw);
 return 0;
}
