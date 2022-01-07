
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int rsn; } ;
struct TYPE_5__ {scalar_t__ wqe_cnt; } ;
struct TYPE_4__ {scalar_t__ wqe_cnt; } ;
struct mlx5_qp {int db; TYPE_3__ rsc; TYPE_2__ rq; TYPE_1__ sq; scalar_t__ rss_qp; } ;
struct mlx5_context {int qp_table_mutex; int cqe_version; } ;
struct ibv_qp {scalar_t__ recv_cq; scalar_t__ send_cq; int qp_type; int qp_num; scalar_t__ srq; int context; } ;


 int __mlx5_cq_clean (int ,int ,int *) ;
 int free (struct mlx5_qp*) ;
 int ibv_cmd_destroy_qp (struct ibv_qp*) ;
 int is_xrc_tgt (int ) ;
 int mlx5_clear_qp (struct mlx5_context*,int ) ;
 int mlx5_clear_uidx (struct mlx5_context*,int ) ;
 int mlx5_free_db (struct mlx5_context*,int ) ;
 int mlx5_free_qp_buf (struct mlx5_qp*) ;
 int mlx5_lock_cqs (struct ibv_qp*) ;
 int mlx5_unlock_cqs (struct ibv_qp*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int to_mcq (scalar_t__) ;
 struct mlx5_context* to_mctx (int ) ;
 struct mlx5_qp* to_mqp (struct ibv_qp*) ;
 int * to_msrq (scalar_t__) ;

int mlx5_destroy_qp(struct ibv_qp *ibqp)
{
 struct mlx5_qp *qp = to_mqp(ibqp);
 struct mlx5_context *ctx = to_mctx(ibqp->context);
 int ret;

 if (qp->rss_qp) {
  ret = ibv_cmd_destroy_qp(ibqp);
  if (ret)
   return ret;
  goto free;
 }

 if (!ctx->cqe_version)
  pthread_mutex_lock(&ctx->qp_table_mutex);

 ret = ibv_cmd_destroy_qp(ibqp);
 if (ret) {
  if (!ctx->cqe_version)
   pthread_mutex_unlock(&ctx->qp_table_mutex);
  return ret;
 }

 mlx5_lock_cqs(ibqp);

 __mlx5_cq_clean(to_mcq(ibqp->recv_cq), qp->rsc.rsn,
   ibqp->srq ? to_msrq(ibqp->srq) : ((void*)0));
 if (ibqp->send_cq != ibqp->recv_cq)
  __mlx5_cq_clean(to_mcq(ibqp->send_cq), qp->rsc.rsn, ((void*)0));

 if (!ctx->cqe_version) {
  if (qp->sq.wqe_cnt || qp->rq.wqe_cnt)
   mlx5_clear_qp(ctx, ibqp->qp_num);
 }

 mlx5_unlock_cqs(ibqp);
 if (!ctx->cqe_version)
  pthread_mutex_unlock(&ctx->qp_table_mutex);
 else if (!is_xrc_tgt(ibqp->qp_type))
  mlx5_clear_uidx(ctx, qp->rsc.rsn);

 mlx5_free_db(ctx, qp->db);
 mlx5_free_qp_buf(qp);
free:
 free(qp);

 return 0;
}
