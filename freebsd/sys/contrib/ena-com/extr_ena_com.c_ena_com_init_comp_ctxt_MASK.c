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
typedef  scalar_t__ u16 ;
struct ena_comp_ctx {int /*<<< orphan*/  wait_event; } ;
struct ena_com_admin_queue {int q_depth; int /*<<< orphan*/  comp_ctx; int /*<<< orphan*/  q_dmadev; } ;

/* Variables and functions */
 int ENA_COM_NO_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct ena_comp_ctx* FUNC3 (struct ena_com_admin_queue*,scalar_t__,int) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static inline int FUNC5(struct ena_com_admin_queue *queue)
{
	size_t size = queue->q_depth * sizeof(struct ena_comp_ctx);
	struct ena_comp_ctx *comp_ctx;
	u16 i;

	queue->comp_ctx = FUNC0(queue->q_dmadev, size);
	if (FUNC4(!queue->comp_ctx)) {
		FUNC2("memory allocation failed\n");
		return ENA_COM_NO_MEM;
	}

	for (i = 0; i < queue->q_depth; i++) {
		comp_ctx = FUNC3(queue, i, false);
		if (comp_ctx)
			FUNC1(comp_ctx->wait_event);
	}

	return 0;
}