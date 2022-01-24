#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ buf; } ;
struct ibv_srq {int dummy; } ;
struct TYPE_10__ {struct ibv_srq srq; int /*<<< orphan*/  srq_num; } ;
struct mlx4_srq {int max_gs; int ext_srq; TYPE_3__ buf; struct mlx4_srq* wrid; scalar_t__* db; TYPE_6__ verbs_srq; scalar_t__ counter; int /*<<< orphan*/  max; int /*<<< orphan*/  lock; } ;
struct mlx4_create_xsrq {uintptr_t buf_addr; uintptr_t db_addr; int /*<<< orphan*/  ibv_cmd; } ;
struct mlx4_create_srq_resp {int /*<<< orphan*/  ibv_resp; } ;
struct TYPE_9__ {int max_wr; int max_sge; } ;
struct ibv_srq_init_attr_ex {TYPE_4__ attr; int /*<<< orphan*/  pd; } ;
struct ibv_context {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  xsrq_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX4_DB_TYPE_RQ ; 
 int /*<<< orphan*/  PTHREAD_PROCESS_PRIVATE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct mlx4_srq* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_srq*) ; 
 int FUNC3 (struct ibv_context*,TYPE_6__*,int,struct ibv_srq_init_attr_ex*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ibv_srq*) ; 
 scalar_t__* FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,TYPE_4__*,struct mlx4_srq*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct mlx4_srq*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC11 (struct ibv_context*) ; 

struct ibv_srq *FUNC12(struct ibv_context *context,
				    struct ibv_srq_init_attr_ex *attr_ex)
{
	struct mlx4_create_xsrq cmd;
	struct mlx4_create_srq_resp resp;
	struct mlx4_srq *srq;
	int ret;

	/* Sanity check SRQ size before proceeding */
	if (attr_ex->attr.max_wr > 1 << 16 || attr_ex->attr.max_sge > 64)
		return NULL;

	srq = FUNC1(1, sizeof *srq);
	if (!srq)
		return NULL;

	if (FUNC10(&srq->lock, PTHREAD_PROCESS_PRIVATE))
		goto err;

	srq->max     = FUNC0(attr_ex->attr.max_wr + 1);
	srq->max_gs  = attr_ex->attr.max_sge;
	srq->counter = 0;
	srq->ext_srq = 1;

	if (FUNC6(attr_ex->pd, &attr_ex->attr, srq))
		goto err;

	srq->db = FUNC5(FUNC11(context), MLX4_DB_TYPE_RQ);
	if (!srq->db)
		goto err_free;

	*srq->db = 0;

	cmd.buf_addr = (uintptr_t) srq->buf.buf;
	cmd.db_addr  = (uintptr_t) srq->db;

	ret = FUNC3(context, &srq->verbs_srq,
				    sizeof(srq->verbs_srq),
				    attr_ex,
				    &cmd.ibv_cmd, sizeof cmd,
				    &resp.ibv_resp, sizeof resp);
	if (ret)
		goto err_db;

	ret = FUNC9(&FUNC11(context)->xsrq_table,
			      srq->verbs_srq.srq_num, srq);
	if (ret)
		goto err_destroy;

	return &srq->verbs_srq.srq;

err_destroy:
	FUNC4(&srq->verbs_srq.srq);
err_db:
	FUNC8(FUNC11(context), MLX4_DB_TYPE_RQ, srq->db);
err_free:
	FUNC2(srq->wrid);
	FUNC7(&srq->buf);
err:
	FUNC2(srq);
	return NULL;
}