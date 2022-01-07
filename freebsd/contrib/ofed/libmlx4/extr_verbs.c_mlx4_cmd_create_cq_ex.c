
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_create_cq_resp_ex {int cqn; int ibv_resp; } ;
struct mlx4_create_cq_ex {uintptr_t buf_addr; uintptr_t db_addr; int ibv_cmd; } ;
struct TYPE_2__ {scalar_t__ buf; } ;
struct mlx4_cq {int cqn; int ibv_cq; scalar_t__ set_ci_db; TYPE_1__ buf; } ;
struct ibv_cq_init_attr_ex {int dummy; } ;
struct ibv_context {int dummy; } ;
typedef int resp ;
typedef int cmd ;


 int ibv_cmd_create_cq_ex (struct ibv_context*,struct ibv_cq_init_attr_ex*,int *,int *,int,int,int *,int,int) ;

__attribute__((used)) static int mlx4_cmd_create_cq_ex(struct ibv_context *context,
     struct ibv_cq_init_attr_ex *cq_attr,
     struct mlx4_cq *cq)
{
 struct mlx4_create_cq_ex cmd = {};
 struct mlx4_create_cq_resp_ex resp = {};
 int ret;

 cmd.buf_addr = (uintptr_t) cq->buf.buf;
 cmd.db_addr = (uintptr_t) cq->set_ci_db;

 ret = ibv_cmd_create_cq_ex(context, cq_attr,
       &cq->ibv_cq, &cmd.ibv_cmd,
       sizeof(cmd.ibv_cmd),
       sizeof(cmd),
       &resp.ibv_resp,
       sizeof(resp.ibv_resp),
       sizeof(resp));
 if (!ret)
  cq->cqn = resp.cqn;

 return ret;
}
