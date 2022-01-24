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
typedef  int /*<<< orphan*/  u16 ;
struct ena_com_admin_sq {int phase; int /*<<< orphan*/ * db_addr; scalar_t__ tail; scalar_t__ head; int /*<<< orphan*/  entries; int /*<<< orphan*/  mem_handle; int /*<<< orphan*/  dma_addr; } ;
struct ena_com_admin_queue {int /*<<< orphan*/  q_dmadev; int /*<<< orphan*/  q_depth; struct ena_com_admin_sq sq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENA_COM_NO_MEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(struct ena_com_admin_queue *queue)
{
	struct ena_com_admin_sq *sq = &queue->sq;
	u16 size = FUNC0(queue->q_depth);

	FUNC1(queue->q_dmadev, size, sq->entries, sq->dma_addr,
			       sq->mem_handle);

	if (!sq->entries) {
		FUNC2("memory allocation failed\n");
		return ENA_COM_NO_MEM;
	}

	sq->head = 0;
	sq->tail = 0;
	sq->phase = 1;

	sq->db_addr = NULL;

	return 0;
}