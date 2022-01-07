
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_wqe_inl_data_seg {int dummy; } ;
struct TYPE_4__ {int wqe_cnt; int max_post; int max_gs; int wqe_shift; } ;
struct mlx5_qp {int max_inline_data; TYPE_2__ sq; } ;
struct mlx5_context {int max_sq_desc_sz; int max_send_wqebb; int * dbg_fp; } ;
struct TYPE_3__ {int max_send_wr; int max_inline_data; int max_send_sge; } ;
struct ibv_qp_init_attr_ex {TYPE_1__ cap; int qp_type; } ;
typedef int FILE ;


 int EINVAL ;
 int MLX5_DBG_QP ;
 int MLX5_SEND_WQE_BB ;
 int mlx5_calc_send_wqe (struct mlx5_context*,struct ibv_qp_init_attr_ex*,struct mlx5_qp*) ;
 int mlx5_dbg (int *,int ,char*) ;
 int mlx5_ilog2 (int) ;
 int mlx5_round_up_power_of_two (int) ;
 int sq_overhead (int ) ;

__attribute__((used)) static int mlx5_calc_sq_size(struct mlx5_context *ctx,
        struct ibv_qp_init_attr_ex *attr,
        struct mlx5_qp *qp)
{
 int wqe_size;
 int wq_size;
 FILE *fp = ctx->dbg_fp;

 if (!attr->cap.max_send_wr)
  return 0;

 wqe_size = mlx5_calc_send_wqe(ctx, attr, qp);
 if (wqe_size < 0) {
  mlx5_dbg(fp, MLX5_DBG_QP, "\n");
  return wqe_size;
 }

 if (wqe_size > ctx->max_sq_desc_sz) {
  mlx5_dbg(fp, MLX5_DBG_QP, "\n");
  return -EINVAL;
 }

 qp->max_inline_data = wqe_size - sq_overhead(attr->qp_type) -
  sizeof(struct mlx5_wqe_inl_data_seg);
 attr->cap.max_inline_data = qp->max_inline_data;





 if (attr->cap.max_send_wr > 0x7fffffff / ctx->max_sq_desc_sz) {
  mlx5_dbg(fp, MLX5_DBG_QP, "\n");
  return -EINVAL;
 }

 wq_size = mlx5_round_up_power_of_two(attr->cap.max_send_wr * wqe_size);
 qp->sq.wqe_cnt = wq_size / MLX5_SEND_WQE_BB;
 if (qp->sq.wqe_cnt > ctx->max_send_wqebb) {
  mlx5_dbg(fp, MLX5_DBG_QP, "\n");
  return -EINVAL;
 }

 qp->sq.wqe_shift = mlx5_ilog2(MLX5_SEND_WQE_BB);
 qp->sq.max_gs = attr->cap.max_send_sge;
 qp->sq.max_post = wq_size / wqe_size;

 return wq_size;
}
