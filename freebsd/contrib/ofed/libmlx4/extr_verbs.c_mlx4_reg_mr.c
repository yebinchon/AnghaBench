
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_reg_mr_resp {int dummy; } ;
struct ibv_reg_mr {int dummy; } ;
struct ibv_pd {int dummy; } ;
struct ibv_mr {int dummy; } ;


 int free (struct ibv_mr*) ;
 int ibv_cmd_reg_mr (struct ibv_pd*,void*,size_t,uintptr_t,int,struct ibv_mr*,struct ibv_reg_mr*,int,struct ibv_reg_mr_resp*,int) ;
 struct ibv_mr* malloc (int) ;

struct ibv_mr *mlx4_reg_mr(struct ibv_pd *pd, void *addr, size_t length,
      int access)
{
 struct ibv_mr *mr;
 struct ibv_reg_mr cmd;
 struct ibv_reg_mr_resp resp;
 int ret;

 mr = malloc(sizeof *mr);
 if (!mr)
  return ((void*)0);

 ret = ibv_cmd_reg_mr(pd, addr, length, (uintptr_t) addr,
        access, mr, &cmd, sizeof cmd,
        &resp, sizeof resp);
 if (ret) {
  free(mr);
  return ((void*)0);
 }

 return mr;
}
