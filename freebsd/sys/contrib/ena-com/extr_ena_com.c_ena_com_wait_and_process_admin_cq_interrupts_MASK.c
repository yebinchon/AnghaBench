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
struct ena_comp_ctx {scalar_t__ status; int /*<<< orphan*/  comp_status; int /*<<< orphan*/  cmd_opcode; int /*<<< orphan*/  wait_event; } ;
struct TYPE_2__ {int /*<<< orphan*/  no_completion; } ;
struct ena_com_admin_queue {int running_state; int /*<<< orphan*/  q_lock; TYPE_1__ stats; int /*<<< orphan*/  completion_timeout; } ;

/* Variables and functions */
 scalar_t__ ENA_CMD_COMPLETED ; 
 scalar_t__ ENA_CMD_SUBMITTED ; 
 int ENA_COM_TIMER_EXPIRED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ena_com_admin_queue*,struct ena_comp_ctx*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ena_com_admin_queue*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct ena_comp_ctx *comp_ctx,
							struct ena_com_admin_queue *admin_queue)
{
	unsigned long flags = 0;
	int ret;

	FUNC2(comp_ctx->wait_event,
			    admin_queue->completion_timeout);

	/* In case the command wasn't completed find out the root cause.
	 * There might be 2 kinds of errors
	 * 1) No completion (timeout reached)
	 * 2) There is completion but the device didn't get any msi-x interrupt.
	 */
	if (FUNC7(comp_ctx->status == ENA_CMD_SUBMITTED)) {
		FUNC0(admin_queue->q_lock, flags);
		FUNC5(admin_queue);
		admin_queue->stats.no_completion++;
		FUNC1(admin_queue->q_lock, flags);

		if (comp_ctx->status == ENA_CMD_COMPLETED)
			FUNC6("The ena device have completion but the driver didn't receive any MSI-X interrupt (cmd %d)\n",
				    comp_ctx->cmd_opcode);
		else
			FUNC6("The ena device doesn't send any completion for the admin cmd %d status %d\n",
				    comp_ctx->cmd_opcode, comp_ctx->status);

		admin_queue->running_state = false;
		ret = ENA_COM_TIMER_EXPIRED;
		goto err;
	}

	ret = FUNC4(comp_ctx->comp_status);
err:
	FUNC3(admin_queue, comp_ctx);
	return ret;
}