
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_xrcd {int dummy; } ;
struct verbs_xrcd {struct ibv_xrcd xrcd; } ;
struct ibv_xrcd_init_attr {int dummy; } ;
struct ibv_open_xrcd_resp {int dummy; } ;
struct ibv_open_xrcd {int dummy; } ;
struct ibv_context {int dummy; } ;


 struct verbs_xrcd* calloc (int,int) ;
 int free (struct verbs_xrcd*) ;
 int ibv_cmd_open_xrcd (struct ibv_context*,struct verbs_xrcd*,int,struct ibv_xrcd_init_attr*,struct ibv_open_xrcd*,int,struct ibv_open_xrcd_resp*,int) ;

struct ibv_xrcd *mlx4_open_xrcd(struct ibv_context *context,
    struct ibv_xrcd_init_attr *attr)
{
 struct ibv_open_xrcd cmd;
 struct ibv_open_xrcd_resp resp;
 struct verbs_xrcd *xrcd;
 int ret;

 xrcd = calloc(1, sizeof *xrcd);
 if (!xrcd)
  return ((void*)0);

 ret = ibv_cmd_open_xrcd(context, xrcd, sizeof(*xrcd), attr,
    &cmd, sizeof cmd, &resp, sizeof resp);
 if (ret)
  goto err;

 return &xrcd->xrcd;

err:
 free(xrcd);
 return ((void*)0);
}
