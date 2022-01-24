#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int expected_seg; int /*<<< orphan*/ * p_log; scalar_t__ p_rbuf; int /*<<< orphan*/  is_sa_mad; } ;
typedef  TYPE_1__ osmv_rmpp_recv_ctx_t ;
typedef  int /*<<< orphan*/  osm_log_t ;
typedef  int /*<<< orphan*/  ib_api_status_t ;
typedef  int /*<<< orphan*/  cl_qlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IB_INSUFFICIENT_MEMORY ; 
 int /*<<< orphan*/  IB_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int) ; 

ib_api_status_t
FUNC4(osmv_rmpp_recv_ctx_t * p_ctx, osm_log_t * p_log)
{
	ib_api_status_t st = IB_SUCCESS;

	FUNC0(p_ctx);

	p_ctx->is_sa_mad = FALSE;

	p_ctx->p_rbuf = FUNC2(sizeof(cl_qlist_t));
	if (p_ctx->p_rbuf) {
		FUNC3(p_ctx->p_rbuf, 0, sizeof(cl_qlist_t));
		FUNC1(p_ctx->p_rbuf);
		p_ctx->expected_seg = 1;
	} else
		st = IB_INSUFFICIENT_MEMORY;

	p_ctx->p_log = p_log;

	return st;
}