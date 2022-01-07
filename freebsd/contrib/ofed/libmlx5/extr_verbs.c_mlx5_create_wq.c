
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ibv_wq {int post_recv; } ;
struct TYPE_7__ {scalar_t__ rsn; int type; } ;
struct TYPE_6__ {int wqe_shift; int wqe_cnt; scalar_t__ offset; int lock; } ;
struct TYPE_5__ {scalar_t__ buf; } ;
struct mlx5_rwq {int buf_size; scalar_t__* db; struct ibv_wq wq; TYPE_3__ rsc; TYPE_2__ rq; TYPE_1__ buf; scalar_t__* recv_db; scalar_t__ pbuff; scalar_t__ wq_sig; } ;
struct TYPE_8__ {uintptr_t buf_addr; uintptr_t db_addr; scalar_t__ user_index; int rq_wqe_shift; int rq_wqe_count; int flags; } ;
struct mlx5_create_wq_resp {TYPE_4__ drv; int ibv_resp; int ibv_cmd; } ;
struct mlx5_create_wq {TYPE_4__ drv; int ibv_resp; int ibv_cmd; } ;
struct mlx5_context {int * dbg_fp; } ;
struct ibv_wq_init_attr {scalar_t__ wq_type; } ;
struct ibv_context {int dummy; } ;
typedef int resp ;
typedef scalar_t__ int32_t ;
typedef int cmd ;
typedef int FILE ;


 scalar_t__ IBV_WQT_RQ ;
 int MLX5_DBG_QP ;
 size_t MLX5_RCV_DBR ;
 int MLX5_RSC_TYPE_RWQ ;
 int MLX5_RWQ_FLAG_SIGNATURE ;
 size_t MLX5_SND_DBR ;
 struct mlx5_rwq* calloc (int,int) ;
 int errno ;
 int free (struct mlx5_rwq*) ;
 int ibv_cmd_create_wq (struct ibv_context*,struct ibv_wq_init_attr*,struct ibv_wq*,int *,int,int,int *,int,int) ;
 int memset (struct mlx5_create_wq_resp*,int ,int) ;
 scalar_t__* mlx5_alloc_dbrec (struct mlx5_context*) ;
 scalar_t__ mlx5_alloc_rwq_buf (struct ibv_context*,struct mlx5_rwq*,int) ;
 int mlx5_calc_rwq_size (struct mlx5_context*,struct mlx5_rwq*,struct ibv_wq_init_attr*) ;
 int mlx5_clear_uidx (struct mlx5_context*,scalar_t__) ;
 int mlx5_dbg (int *,int ,char*) ;
 int mlx5_free_db (struct mlx5_context*,scalar_t__*) ;
 int mlx5_free_rwq_buf (struct mlx5_rwq*,struct ibv_context*) ;
 int mlx5_init_rwq_indices (struct mlx5_rwq*) ;
 int mlx5_post_wq_recv ;
 scalar_t__ mlx5_spinlock_init (int *) ;
 scalar_t__ mlx5_store_uidx (struct mlx5_context*,struct mlx5_rwq*) ;
 scalar_t__ rwq_sig_enabled (struct ibv_context*) ;
 struct mlx5_context* to_mctx (struct ibv_context*) ;

struct ibv_wq *mlx5_create_wq(struct ibv_context *context,
         struct ibv_wq_init_attr *attr)
{
 struct mlx5_create_wq cmd;
 struct mlx5_create_wq_resp resp;
 int err;
 struct mlx5_rwq *rwq;
 struct mlx5_context *ctx = to_mctx(context);
 int ret;
 int32_t usr_idx = 0;
 FILE *fp = ctx->dbg_fp;

 if (attr->wq_type != IBV_WQT_RQ)
  return ((void*)0);

 memset(&cmd, 0, sizeof(cmd));
 memset(&resp, 0, sizeof(resp));

 rwq = calloc(1, sizeof(*rwq));
 if (!rwq)
  return ((void*)0);

 rwq->wq_sig = rwq_sig_enabled(context);
 if (rwq->wq_sig)
  cmd.drv.flags = MLX5_RWQ_FLAG_SIGNATURE;

 ret = mlx5_calc_rwq_size(ctx, rwq, attr);
 if (ret < 0) {
  errno = -ret;
  goto err;
 }

 rwq->buf_size = ret;
 if (mlx5_alloc_rwq_buf(context, rwq, ret))
  goto err;

 mlx5_init_rwq_indices(rwq);

 if (mlx5_spinlock_init(&rwq->rq.lock))
  goto err_free_rwq_buf;

 rwq->db = mlx5_alloc_dbrec(ctx);
 if (!rwq->db)
  goto err_free_rwq_buf;

 rwq->db[MLX5_RCV_DBR] = 0;
 rwq->db[MLX5_SND_DBR] = 0;
 rwq->pbuff = rwq->buf.buf + rwq->rq.offset;
 rwq->recv_db = &rwq->db[MLX5_RCV_DBR];
 cmd.drv.buf_addr = (uintptr_t)rwq->buf.buf;
 cmd.drv.db_addr = (uintptr_t)rwq->db;
 cmd.drv.rq_wqe_count = rwq->rq.wqe_cnt;
 cmd.drv.rq_wqe_shift = rwq->rq.wqe_shift;
 usr_idx = mlx5_store_uidx(ctx, rwq);
 if (usr_idx < 0) {
  mlx5_dbg(fp, MLX5_DBG_QP, "Couldn't find free user index\n");
  goto err_free_db_rec;
 }

 cmd.drv.user_index = usr_idx;
 err = ibv_cmd_create_wq(context, attr, &rwq->wq, &cmd.ibv_cmd,
    sizeof(cmd.ibv_cmd),
    sizeof(cmd),
    &resp.ibv_resp, sizeof(resp.ibv_resp),
    sizeof(resp));
 if (err)
  goto err_create;

 rwq->rsc.type = MLX5_RSC_TYPE_RWQ;
 rwq->rsc.rsn = cmd.drv.user_index;

 rwq->wq.post_recv = mlx5_post_wq_recv;
 return &rwq->wq;

err_create:
 mlx5_clear_uidx(ctx, cmd.drv.user_index);
err_free_db_rec:
 mlx5_free_db(to_mctx(context), rwq->db);
err_free_rwq_buf:
 mlx5_free_rwq_buf(rwq, context);
err:
 free(rwq);
 return ((void*)0);
}
