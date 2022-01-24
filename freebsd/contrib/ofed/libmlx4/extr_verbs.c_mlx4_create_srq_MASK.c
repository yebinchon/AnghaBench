#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ buf; } ;
struct ibv_srq {int dummy; } ;
struct TYPE_4__ {struct ibv_srq srq; } ;
struct mlx4_srq {int max_gs; TYPE_2__ buf; struct mlx4_srq* wrid; scalar_t__* db; TYPE_1__ verbs_srq; scalar_t__ ext_srq; scalar_t__ counter; int /*<<< orphan*/  max; int /*<<< orphan*/  lock; } ;
struct mlx4_create_srq_resp {int /*<<< orphan*/  ibv_resp; } ;
struct mlx4_create_srq {uintptr_t buf_addr; uintptr_t db_addr; int /*<<< orphan*/  ibv_cmd; } ;
struct TYPE_6__ {int max_wr; int max_sge; } ;
struct ibv_srq_init_attr {TYPE_3__ attr; } ;
struct ibv_pd {int /*<<< orphan*/  context; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX4_DB_TYPE_RQ ; 
 int /*<<< orphan*/  PTHREAD_PROCESS_PRIVATE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_srq*) ; 
 int FUNC2 (struct ibv_pd*,struct ibv_srq*,struct ibv_srq_init_attr*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 struct mlx4_srq* FUNC3 (int) ; 
 scalar_t__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct ibv_pd*,TYPE_3__*,struct mlx4_srq*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

struct ibv_srq *FUNC10(struct ibv_pd *pd,
				struct ibv_srq_init_attr *attr)
{
	struct mlx4_create_srq      cmd;
	struct mlx4_create_srq_resp resp;
	struct mlx4_srq		   *srq;
	int			    ret;

	/* Sanity check SRQ size before proceeding */
	if (attr->attr.max_wr > 1 << 16 || attr->attr.max_sge > 64)
		return NULL;

	srq = FUNC3(sizeof *srq);
	if (!srq)
		return NULL;

	if (FUNC8(&srq->lock, PTHREAD_PROCESS_PRIVATE))
		goto err;

	srq->max     = FUNC0(attr->attr.max_wr + 1);
	srq->max_gs  = attr->attr.max_sge;
	srq->counter = 0;
	srq->ext_srq = 0;

	if (FUNC5(pd, &attr->attr, srq))
		goto err;

	srq->db = FUNC4(FUNC9(pd->context), MLX4_DB_TYPE_RQ);
	if (!srq->db)
		goto err_free;

	*srq->db = 0;

	cmd.buf_addr = (uintptr_t) srq->buf.buf;
	cmd.db_addr  = (uintptr_t) srq->db;

	ret = FUNC2(pd, &srq->verbs_srq.srq, attr,
				 &cmd.ibv_cmd, sizeof cmd,
				 &resp.ibv_resp, sizeof resp);
	if (ret)
		goto err_db;

	return &srq->verbs_srq.srq;

err_db:
	FUNC7(FUNC9(pd->context), MLX4_DB_TYPE_RQ, srq->db);

err_free:
	FUNC1(srq->wrid);
	FUNC6(&srq->buf);

err:
	FUNC1(srq);

	return NULL;
}