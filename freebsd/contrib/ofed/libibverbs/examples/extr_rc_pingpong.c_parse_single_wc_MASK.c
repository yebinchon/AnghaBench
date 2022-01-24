#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct ts_params {int last_comp_with_ts; scalar_t__ comp_recv_prev_time; int /*<<< orphan*/  comp_with_time_iters; scalar_t__ comp_recv_total_time_delta; int /*<<< orphan*/  comp_recv_min_time_delta; int /*<<< orphan*/  comp_recv_max_time_delta; } ;
struct pingpong_context {int rx_depth; int pending; scalar_t__ completion_timestamp_mask; } ;
typedef  enum ibv_wc_status { ____Placeholder_ibv_wc_status } ibv_wc_status ;

/* Variables and functions */
 int IBV_WC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
#define  PINGPONG_RECV_WRID 129 
#define  PINGPONG_SEND_WRID 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC3 (int) ; 
 int FUNC4 (struct pingpong_context*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct pingpong_context*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  use_ts ; 

__attribute__((used)) static inline int FUNC6(struct pingpong_context *ctx, int *scnt,
				  int *rcnt, int *routs, int iters,
				  uint64_t wr_id, enum ibv_wc_status status,
				  uint64_t completion_timestamp,
				  struct ts_params *ts)
{
	if (status != IBV_WC_SUCCESS) {
		FUNC2(stderr, "Failed status %s (%d) for wr_id %d\n",
			FUNC3(status),
			status, (int)wr_id);
		return 1;
	}

	switch ((int)wr_id) {
	case PINGPONG_SEND_WRID:
		++(*scnt);
		break;

	case PINGPONG_RECV_WRID:
		if (--(*routs) <= 1) {
			*routs += FUNC4(ctx, ctx->rx_depth - *routs);
			if (*routs < ctx->rx_depth) {
				FUNC2(stderr,
					"Couldn't post receive (%d)\n",
					*routs);
				return 1;
			}
		}

		++(*rcnt);
		if (use_ts) {
			if (ts->last_comp_with_ts) {
				uint64_t delta;

				/* checking whether the clock was wrapped around */
				if (completion_timestamp >= ts->comp_recv_prev_time)
					delta = completion_timestamp - ts->comp_recv_prev_time;
				else
					delta = ctx->completion_timestamp_mask - ts->comp_recv_prev_time +
						completion_timestamp + 1;

				ts->comp_recv_max_time_delta = FUNC0(ts->comp_recv_max_time_delta, delta);
				ts->comp_recv_min_time_delta = FUNC1(ts->comp_recv_min_time_delta, delta);
				ts->comp_recv_total_time_delta += delta;
				ts->comp_with_time_iters++;
			}

			ts->comp_recv_prev_time = completion_timestamp;
			ts->last_comp_with_ts = 1;
		} else {
			ts->last_comp_with_ts = 0;
		}

		break;

	default:
		FUNC2(stderr, "Completion for unknown wr_id %d\n",
			(int)wr_id);
		return 1;
	}

	ctx->pending &= ~(int)wr_id;
	if (*scnt < iters && !ctx->pending) {
		if (FUNC5(ctx)) {
			FUNC2(stderr, "Couldn't post send\n");
			return 1;
		}
		ctx->pending = PINGPONG_RECV_WRID |
			PINGPONG_SEND_WRID;
	}

	return 0;
}