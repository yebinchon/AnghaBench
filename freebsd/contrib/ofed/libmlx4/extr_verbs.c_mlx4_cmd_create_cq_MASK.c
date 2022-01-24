#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mlx4_create_cq_resp {int /*<<< orphan*/  cqn; int /*<<< orphan*/  ibv_resp; } ;
struct mlx4_create_cq {uintptr_t buf_addr; uintptr_t db_addr; int /*<<< orphan*/  ibv_cmd; } ;
struct TYPE_2__ {scalar_t__ buf; } ;
struct mlx4_cq {int /*<<< orphan*/  cqn; int /*<<< orphan*/  ibv_cq; scalar_t__ set_ci_db; TYPE_1__ buf; } ;
struct ibv_cq_init_attr_ex {int /*<<< orphan*/  comp_vector; int /*<<< orphan*/  channel; int /*<<< orphan*/  cqe; } ;
struct ibv_context {int dummy; } ;
typedef  int /*<<< orphan*/  resp ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int FUNC0 (struct ibv_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct ibv_context *context,
			      struct ibv_cq_init_attr_ex *cq_attr,
			      struct mlx4_cq *cq)
{
	struct mlx4_create_cq      cmd = {};
	struct mlx4_create_cq_resp resp = {};
	int ret;

	cmd.buf_addr = (uintptr_t) cq->buf.buf;
	cmd.db_addr  = (uintptr_t) cq->set_ci_db;

	ret = FUNC0(context, cq_attr->cqe, cq_attr->channel,
				cq_attr->comp_vector,
				FUNC1(&cq->ibv_cq),
				&cmd.ibv_cmd, sizeof(cmd),
				&resp.ibv_resp, sizeof(resp));
	if (!ret)
		cq->cqn = resp.cqn;

	return ret;

}