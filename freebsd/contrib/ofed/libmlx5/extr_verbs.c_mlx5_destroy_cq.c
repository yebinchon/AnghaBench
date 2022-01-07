
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ibv_cq {int context; } ;
struct TYPE_3__ {int active_buf; int dbrec; } ;


 int free (TYPE_1__*) ;
 int ibv_cmd_destroy_cq (struct ibv_cq*) ;
 int mlx5_free_cq_buf (int ,int ) ;
 int mlx5_free_db (int ,int ) ;
 TYPE_1__* to_mcq (struct ibv_cq*) ;
 int to_mctx (int ) ;

int mlx5_destroy_cq(struct ibv_cq *cq)
{
 int ret;

 ret = ibv_cmd_destroy_cq(cq);
 if (ret)
  return ret;

 mlx5_free_db(to_mctx(cq->context), to_mcq(cq)->dbrec);
 mlx5_free_cq_buf(to_mctx(cq->context), to_mcq(cq)->active_buf);
 free(to_mcq(cq));

 return 0;
}
