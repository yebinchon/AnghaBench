
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibv_qp {int dummy; } ;
struct TYPE_2__ {struct ibv_qp qp; } ;
struct mlx4_qp {TYPE_1__ verbs_qp; } ;
struct ibv_qp_open_attr {int dummy; } ;
struct ibv_open_qp {int dummy; } ;
struct ibv_create_qp_resp {int dummy; } ;
struct ibv_context {int dummy; } ;


 struct mlx4_qp* calloc (int,int) ;
 int free (struct mlx4_qp*) ;
 int ibv_cmd_open_qp (struct ibv_context*,TYPE_1__*,int,struct ibv_qp_open_attr*,struct ibv_open_qp*,int,struct ibv_create_qp_resp*,int) ;

struct ibv_qp *mlx4_open_qp(struct ibv_context *context, struct ibv_qp_open_attr *attr)
{
 struct ibv_open_qp cmd;
 struct ibv_create_qp_resp resp;
 struct mlx4_qp *qp;
 int ret;

 qp = calloc(1, sizeof *qp);
 if (!qp)
  return ((void*)0);

 ret = ibv_cmd_open_qp(context, &qp->verbs_qp, sizeof(qp->verbs_qp), attr,
         &cmd, sizeof cmd, &resp, sizeof resp);
 if (ret)
  goto err;

 return &qp->verbs_qp.qp;

err:
 free(qp);
 return ((void*)0);
}
