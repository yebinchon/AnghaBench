#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ibv_wq {int /*<<< orphan*/  post_recv; } ;
struct TYPE_7__ {scalar_t__ rsn; int /*<<< orphan*/  type; } ;
struct TYPE_6__ {int /*<<< orphan*/  wqe_shift; int /*<<< orphan*/  wqe_cnt; scalar_t__ offset; int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {scalar_t__ buf; } ;
struct mlx5_rwq {int buf_size; scalar_t__* db; struct ibv_wq wq; TYPE_3__ rsc; TYPE_2__ rq; TYPE_1__ buf; scalar_t__* recv_db; scalar_t__ pbuff; scalar_t__ wq_sig; } ;
struct TYPE_8__ {uintptr_t buf_addr; uintptr_t db_addr; scalar_t__ user_index; int /*<<< orphan*/  rq_wqe_shift; int /*<<< orphan*/  rq_wqe_count; int /*<<< orphan*/  flags; } ;
struct mlx5_create_wq_resp {TYPE_4__ drv; int /*<<< orphan*/  ibv_resp; int /*<<< orphan*/  ibv_cmd; } ;
struct mlx5_create_wq {TYPE_4__ drv; int /*<<< orphan*/  ibv_resp; int /*<<< orphan*/  ibv_cmd; } ;
struct mlx5_context {int /*<<< orphan*/ * dbg_fp; } ;
struct ibv_wq_init_attr {scalar_t__ wq_type; } ;
struct ibv_context {int dummy; } ;
typedef  int /*<<< orphan*/  resp ;
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  cmd ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ IBV_WQT_RQ ; 
 int /*<<< orphan*/  MLX5_DBG_QP ; 
 size_t MLX5_RCV_DBR ; 
 int /*<<< orphan*/  MLX5_RSC_TYPE_RWQ ; 
 int /*<<< orphan*/  MLX5_RWQ_FLAG_SIGNATURE ; 
 size_t MLX5_SND_DBR ; 
 struct mlx5_rwq* FUNC0 (int,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_rwq*) ; 
 int FUNC2 (struct ibv_context*,struct ibv_wq_init_attr*,struct ibv_wq*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_create_wq_resp*,int /*<<< orphan*/ ,int) ; 
 scalar_t__* FUNC4 (struct mlx5_context*) ; 
 scalar_t__ FUNC5 (struct ibv_context*,struct mlx5_rwq*,int) ; 
 int FUNC6 (struct mlx5_context*,struct mlx5_rwq*,struct ibv_wq_init_attr*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_context*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx5_context*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx5_rwq*,struct ibv_context*) ; 
 int /*<<< orphan*/  FUNC11 (struct mlx5_rwq*) ; 
 int /*<<< orphan*/  mlx5_post_wq_recv ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (struct mlx5_context*,struct mlx5_rwq*) ; 
 scalar_t__ FUNC14 (struct ibv_context*) ; 
 struct mlx5_context* FUNC15 (struct ibv_context*) ; 

struct ibv_wq *FUNC16(struct ibv_context *context,
			      struct ibv_wq_init_attr *attr)
{
	struct mlx5_create_wq		cmd;
	struct mlx5_create_wq_resp		resp;
	int				err;
	struct mlx5_rwq			*rwq;
	struct mlx5_context	*ctx = FUNC15(context);
	int ret;
	int32_t				usr_idx = 0;
	FILE *fp = ctx->dbg_fp;

	if (attr->wq_type != IBV_WQT_RQ)
		return NULL;

	FUNC3(&cmd, 0, sizeof(cmd));
	FUNC3(&resp, 0, sizeof(resp));

	rwq = FUNC0(1, sizeof(*rwq));
	if (!rwq)
		return NULL;

	rwq->wq_sig = FUNC14(context);
	if (rwq->wq_sig)
		cmd.drv.flags = MLX5_RWQ_FLAG_SIGNATURE;

	ret = FUNC6(ctx, rwq, attr);
	if (ret < 0) {
		errno = -ret;
		goto err;
	}

	rwq->buf_size = ret;
	if (FUNC5(context, rwq, ret))
		goto err;

	FUNC11(rwq);

	if (FUNC12(&rwq->rq.lock))
		goto err_free_rwq_buf;

	rwq->db = FUNC4(ctx);
	if (!rwq->db)
		goto err_free_rwq_buf;

	rwq->db[MLX5_RCV_DBR] = 0;
	rwq->db[MLX5_SND_DBR] = 0;
	rwq->pbuff = rwq->buf.buf + rwq->rq.offset;
	rwq->recv_db =  &rwq->db[MLX5_RCV_DBR];
	cmd.drv.buf_addr = (uintptr_t)rwq->buf.buf;
	cmd.drv.db_addr  = (uintptr_t)rwq->db;
	cmd.drv.rq_wqe_count = rwq->rq.wqe_cnt;
	cmd.drv.rq_wqe_shift = rwq->rq.wqe_shift;
	usr_idx = FUNC13(ctx, rwq);
	if (usr_idx < 0) {
		FUNC8(fp, MLX5_DBG_QP, "Couldn't find free user index\n");
		goto err_free_db_rec;
	}

	cmd.drv.user_index = usr_idx;
	err = FUNC2(context, attr, &rwq->wq, &cmd.ibv_cmd,
				sizeof(cmd.ibv_cmd),
				sizeof(cmd),
				&resp.ibv_resp, sizeof(resp.ibv_resp),
				sizeof(resp));
	if (err)
		goto err_create;

	rwq->rsc.type = MLX5_RSC_TYPE_RWQ;
	rwq->rsc.rsn =  cmd.drv.user_index;

	rwq->wq.post_recv = mlx5_post_wq_recv;
	return &rwq->wq;

err_create:
	FUNC7(ctx, cmd.drv.user_index);
err_free_db_rec:
	FUNC9(FUNC15(context), rwq->db);
err_free_rwq_buf:
	FUNC10(rwq, context);
err:
	FUNC1(rwq);
	return NULL;
}