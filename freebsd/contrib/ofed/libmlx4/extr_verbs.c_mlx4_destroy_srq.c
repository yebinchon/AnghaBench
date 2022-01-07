
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ibv_srq {int context; } ;
struct TYPE_3__ {struct TYPE_3__* wrid; int buf; int db; scalar_t__ ext_srq; } ;


 int MLX4_DB_TYPE_RQ ;
 int free (TYPE_1__*) ;
 int ibv_cmd_destroy_srq (struct ibv_srq*) ;
 int mlx4_destroy_xrc_srq (struct ibv_srq*) ;
 int mlx4_free_buf (int *) ;
 int mlx4_free_db (int ,int ,int ) ;
 int to_mctx (int ) ;
 TYPE_1__* to_msrq (struct ibv_srq*) ;

int mlx4_destroy_srq(struct ibv_srq *srq)
{
 int ret;

 if (to_msrq(srq)->ext_srq)
  return mlx4_destroy_xrc_srq(srq);

 ret = ibv_cmd_destroy_srq(srq);
 if (ret)
  return ret;

 mlx4_free_db(to_mctx(srq->context), MLX4_DB_TYPE_RQ, to_msrq(srq)->db);
 mlx4_free_buf(&to_msrq(srq)->buf);
 free(to_msrq(srq)->wrid);
 free(to_msrq(srq));

 return 0;
}
