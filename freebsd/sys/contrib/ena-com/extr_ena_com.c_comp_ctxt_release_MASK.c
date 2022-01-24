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
struct ena_comp_ctx {int occupied; } ;
struct ena_com_admin_queue {int /*<<< orphan*/  outstanding_cmds; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC1(struct ena_com_admin_queue *queue,
				     struct ena_comp_ctx *comp_ctx)
{
	comp_ctx->occupied = false;
	FUNC0(&queue->outstanding_cmds);
}