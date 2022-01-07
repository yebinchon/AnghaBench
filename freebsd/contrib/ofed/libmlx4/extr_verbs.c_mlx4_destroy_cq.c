
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ibv_cq {int context; } ;
struct TYPE_3__ {int buf; int set_ci_db; } ;


 int MLX4_DB_TYPE_CQ ;
 int free (TYPE_1__*) ;
 int ibv_cmd_destroy_cq (struct ibv_cq*) ;
 int mlx4_free_buf (int *) ;
 int mlx4_free_db (int ,int ,int ) ;
 TYPE_1__* to_mcq (struct ibv_cq*) ;
 int to_mctx (int ) ;

int mlx4_destroy_cq(struct ibv_cq *cq)
{
 int ret;

 ret = ibv_cmd_destroy_cq(cq);
 if (ret)
  return ret;

 mlx4_free_db(to_mctx(cq->context), MLX4_DB_TYPE_CQ, to_mcq(cq)->set_ci_db);
 mlx4_free_buf(&to_mcq(cq)->buf);
 free(to_mcq(cq));

 return 0;
}
