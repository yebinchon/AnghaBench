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
struct pingpong_context {struct pingpong_context* buf; int /*<<< orphan*/  context; scalar_t__ channel; int /*<<< orphan*/  pd; int /*<<< orphan*/  mr; int /*<<< orphan*/  cq; int /*<<< orphan*/  srq; int /*<<< orphan*/ * qp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct pingpong_context*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC9(struct pingpong_context *ctx, int num_qp)
{
	int i;

	for (i = 0; i < num_qp; ++i) {
		if (FUNC7(ctx->qp[i])) {
			FUNC0(stderr, "Couldn't destroy QP[%d]\n", i);
			return 1;
		}
	}

	if (FUNC8(ctx->srq)) {
		FUNC0(stderr, "Couldn't destroy SRQ\n");
		return 1;
	}

	if (FUNC6(ctx->cq)) {
		FUNC0(stderr, "Couldn't destroy CQ\n");
		return 1;
	}

	if (FUNC4(ctx->mr)) {
		FUNC0(stderr, "Couldn't deregister MR\n");
		return 1;
	}

	if (FUNC3(ctx->pd)) {
		FUNC0(stderr, "Couldn't deallocate PD\n");
		return 1;
	}

	if (ctx->channel) {
		if (FUNC5(ctx->channel)) {
			FUNC0(stderr, "Couldn't destroy completion channel\n");
			return 1;
		}
	}

	if (FUNC2(ctx->context)) {
		FUNC0(stderr, "Couldn't release context\n");
		return 1;
	}

	FUNC1(ctx->buf);
	FUNC1(ctx);

	return 0;
}