
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_pd {int dummy; } ;
struct ibv_mw {int dummy; } ;
struct ibv_alloc_mw_resp {int dummy; } ;
struct ibv_alloc_mw {int dummy; } ;
typedef int resp ;
typedef enum ibv_mw_type { ____Placeholder_ibv_mw_type } ibv_mw_type ;
typedef int cmd ;


 int free (struct ibv_mw*) ;
 int ibv_cmd_alloc_mw (struct ibv_pd*,int,struct ibv_mw*,struct ibv_alloc_mw*,int,struct ibv_alloc_mw_resp*,int) ;
 struct ibv_mw* malloc (int) ;
 int memset (struct ibv_mw*,int ,int) ;

struct ibv_mw *mlx5_alloc_mw(struct ibv_pd *pd, enum ibv_mw_type type)
{
 struct ibv_mw *mw;
 struct ibv_alloc_mw cmd;
 struct ibv_alloc_mw_resp resp;
 int ret;

 mw = malloc(sizeof(*mw));
 if (!mw)
  return ((void*)0);

 memset(mw, 0, sizeof(*mw));

 ret = ibv_cmd_alloc_mw(pd, type, mw, &cmd, sizeof(cmd), &resp,
          sizeof(resp));
 if (ret) {
  free(mw);
  return ((void*)0);
 }

 return mw;
}
