
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5dv_cq {int uar; int dbrec; int buf; int cqe_size; scalar_t__ cqe_cnt; int cqn; scalar_t__ comp_mask; } ;
struct TYPE_3__ {scalar_t__ cqe; } ;
struct mlx5_cq {int flags; int dbrec; TYPE_2__* active_buf; int cqe_sz; TYPE_1__ ibv_cq; int cqn; } ;
struct mlx5_context {int uar; } ;
struct ibv_cq {int context; } ;
struct TYPE_4__ {int buf; } ;


 int MLX5_CQ_FLAGS_DV_OWNED ;
 struct mlx5_cq* to_mcq (struct ibv_cq*) ;
 struct mlx5_context* to_mctx (int ) ;

__attribute__((used)) static int mlx5dv_get_cq(struct ibv_cq *cq_in,
    struct mlx5dv_cq *cq_out)
{
 struct mlx5_cq *mcq = to_mcq(cq_in);
 struct mlx5_context *mctx = to_mctx(cq_in->context);

 cq_out->comp_mask = 0;
 cq_out->cqn = mcq->cqn;
 cq_out->cqe_cnt = mcq->ibv_cq.cqe + 1;
 cq_out->cqe_size = mcq->cqe_sz;
 cq_out->buf = mcq->active_buf->buf;
 cq_out->dbrec = mcq->dbrec;
 cq_out->uar = mctx->uar;

 mcq->flags |= MLX5_CQ_FLAGS_DV_OWNED;

 return 0;
}
