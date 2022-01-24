#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int num_clients; scalar_t__ fd; TYPE_1__* recv_qp; TYPE_1__* send_qp; TYPE_1__* rem_dest; TYPE_1__* buf; int /*<<< orphan*/  context; scalar_t__ channel; int /*<<< orphan*/  pd; int /*<<< orphan*/  mr; int /*<<< orphan*/  recv_cq; int /*<<< orphan*/  send_cq; scalar_t__ xrcd; int /*<<< orphan*/  srq; } ;
struct TYPE_4__ {scalar_t__ sockfd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 TYPE_3__ ctx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_1__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC11(void)
{
	int i;

	for (i = 0; i < ctx.num_clients; ++i) {

		if (FUNC9(ctx.send_qp[i])) {
			FUNC1(stderr, "Couldn't destroy INI QP[%d]\n", i);
			return 1;
		}

		if (FUNC9(ctx.recv_qp[i])) {
			FUNC1(stderr, "Couldn't destroy TGT QP[%d]\n", i);
			return 1;
		}

		if (ctx.rem_dest[i].sockfd)
			FUNC0(ctx.rem_dest[i].sockfd);
	}

	if (FUNC10(ctx.srq)) {
		FUNC1(stderr, "Couldn't destroy SRQ\n");
		return 1;
	}

	if (ctx.xrcd && FUNC4(ctx.xrcd)) {
		FUNC1(stderr, "Couldn't close the XRC Domain\n");
		return 1;
	}
	if (ctx.fd >= 0 && FUNC0(ctx.fd)) {
		FUNC1(stderr, "Couldn't close the file for the XRC Domain\n");
		return 1;
	}

	if (FUNC8(ctx.send_cq)) {
		FUNC1(stderr, "Couldn't destroy send CQ\n");
		return 1;
	}

	if (FUNC8(ctx.recv_cq)) {
		FUNC1(stderr, "Couldn't destroy recv CQ\n");
		return 1;
	}

	if (FUNC6(ctx.mr)) {
		FUNC1(stderr, "Couldn't deregister MR\n");
		return 1;
	}

	if (FUNC5(ctx.pd)) {
		FUNC1(stderr, "Couldn't deallocate PD\n");
		return 1;
	}

	if (ctx.channel) {
		if (FUNC7(ctx.channel)) {
			FUNC1(stderr,
				"Couldn't destroy completion channel\n");
			return 1;
		}
	}

	if (FUNC3(ctx.context)) {
		FUNC1(stderr, "Couldn't release context\n");
		return 1;
	}

	FUNC2(ctx.buf);
	FUNC2(ctx.rem_dest);
	FUNC2(ctx.send_qp);
	FUNC2(ctx.recv_qp);
	return 0;
}