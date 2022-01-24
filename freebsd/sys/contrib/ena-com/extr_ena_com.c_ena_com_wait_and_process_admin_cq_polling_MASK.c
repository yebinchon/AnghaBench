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
struct ena_comp_ctx {scalar_t__ status; int /*<<< orphan*/  comp_status; } ;
struct TYPE_2__ {int /*<<< orphan*/  aborted_cmd; int /*<<< orphan*/  no_completion; } ;
struct ena_com_admin_queue {int running_state; int /*<<< orphan*/  q_lock; TYPE_1__ stats; int /*<<< orphan*/  completion_timeout; } ;

/* Variables and functions */
 scalar_t__ ENA_CMD_ABORTED ; 
 scalar_t__ ENA_CMD_COMPLETED ; 
 scalar_t__ ENA_CMD_SUBMITTED ; 
 int ENA_COM_NO_DEVICE ; 
 int ENA_COM_TIMER_EXPIRED ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENA_POLL_MS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct ena_com_admin_queue*,struct ena_comp_ctx*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ena_com_admin_queue*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct ena_comp_ctx *comp_ctx,
						     struct ena_com_admin_queue *admin_queue)
{
	unsigned long flags = 0;
	unsigned long timeout;
	int ret;

	timeout = FUNC0(admin_queue->completion_timeout);

	while (1) {
                FUNC2(admin_queue->q_lock, flags);
                FUNC8(admin_queue);
                FUNC3(admin_queue->q_lock, flags);

                if (comp_ctx->status != ENA_CMD_SUBMITTED)
			break;

		if (FUNC4(timeout)) {
			FUNC9("Wait for completion (polling) timeout\n");
			/* ENA didn't have any completion */
			FUNC2(admin_queue->q_lock, flags);
			admin_queue->stats.no_completion++;
			admin_queue->running_state = false;
			FUNC3(admin_queue->q_lock, flags);

			ret = ENA_COM_TIMER_EXPIRED;
			goto err;
		}

		FUNC1(ENA_POLL_MS);
	}

	if (FUNC10(comp_ctx->status == ENA_CMD_ABORTED)) {
		FUNC9("Command was aborted\n");
		FUNC2(admin_queue->q_lock, flags);
		admin_queue->stats.aborted_cmd++;
		FUNC3(admin_queue->q_lock, flags);
		ret = ENA_COM_NO_DEVICE;
		goto err;
	}

	FUNC5(comp_ctx->status != ENA_CMD_COMPLETED,
		 "Invalid comp status %d\n", comp_ctx->status);

	ret = FUNC7(comp_ctx->comp_status);
err:
	FUNC6(admin_queue, comp_ctx);
	return ret;
}