
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int srq_num; int cq; } ;
struct mlx4_srq {struct mlx4_srq* wrid; int buf; int db; TYPE_1__ verbs_srq; } ;
struct mlx4_cq {int lock; } ;
struct mlx4_context {int xsrq_table; } ;
struct ibv_srq {int context; } ;


 int MLX4_DB_TYPE_RQ ;
 int free (struct mlx4_srq*) ;
 int ibv_cmd_destroy_srq (struct ibv_srq*) ;
 int mlx4_clear_xsrq (int *,int ) ;
 int mlx4_cq_clean (struct mlx4_cq*,int ,struct mlx4_srq*) ;
 int mlx4_free_buf (int *) ;
 int mlx4_free_db (struct mlx4_context*,int ,int ) ;
 int mlx4_store_xsrq (int *,int ,struct mlx4_srq*) ;
 int pthread_spin_lock (int *) ;
 int pthread_spin_unlock (int *) ;
 struct mlx4_cq* to_mcq (int ) ;
 struct mlx4_context* to_mctx (int ) ;
 struct mlx4_srq* to_msrq (struct ibv_srq*) ;

int mlx4_destroy_xrc_srq(struct ibv_srq *srq)
{
 struct mlx4_context *mctx = to_mctx(srq->context);
 struct mlx4_srq *msrq = to_msrq(srq);
 struct mlx4_cq *mcq;
 int ret;

 mcq = to_mcq(msrq->verbs_srq.cq);
 mlx4_cq_clean(mcq, 0, msrq);
 pthread_spin_lock(&mcq->lock);
 mlx4_clear_xsrq(&mctx->xsrq_table, msrq->verbs_srq.srq_num);
 pthread_spin_unlock(&mcq->lock);

 ret = ibv_cmd_destroy_srq(srq);
 if (ret) {
  pthread_spin_lock(&mcq->lock);
  mlx4_store_xsrq(&mctx->xsrq_table, msrq->verbs_srq.srq_num, msrq);
  pthread_spin_unlock(&mcq->lock);
  return ret;
 }

 mlx4_free_db(mctx, MLX4_DB_TYPE_RQ, msrq->db);
 mlx4_free_buf(&msrq->buf);
 free(msrq->wrid);
 free(msrq);

 return 0;
}
