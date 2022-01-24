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
typedef  size_t u16 ;
struct ena_comp_ctx {int occupied; } ;
struct ena_com_admin_queue {size_t q_depth; struct ena_comp_ctx* comp_ctx; int /*<<< orphan*/  outstanding_cmds; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static struct ena_comp_ctx *FUNC3(struct ena_com_admin_queue *queue,
					  u16 command_id, bool capture)
{
	if (FUNC2(command_id >= queue->q_depth)) {
		FUNC1("command id is larger than the queue size. cmd_id: %u queue size %d\n",
			    command_id, queue->q_depth);
		return NULL;
	}

	if (FUNC2(queue->comp_ctx[command_id].occupied && capture)) {
		FUNC1("Completion context is occupied\n");
		return NULL;
	}

	if (capture) {
		FUNC0(&queue->outstanding_cmds);
		queue->comp_ctx[command_id].occupied = true;
	}

	return &queue->comp_ctx[command_id];
}