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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int /*<<< orphan*/  max_entries_in_tx_burst; } ;
struct ena_com_io_sq {int /*<<< orphan*/  entries_in_tx_burst_left; int /*<<< orphan*/  qid; int /*<<< orphan*/  db_addr; int /*<<< orphan*/  bus; TYPE_1__ llq_info; int /*<<< orphan*/  tail; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ena_com_io_sq*) ; 

__attribute__((used)) static inline int FUNC3(struct ena_com_io_sq *io_sq)
{
	u16 tail = io_sq->tail;
	u16 max_entries_in_tx_burst = io_sq->llq_info.max_entries_in_tx_burst;

	FUNC1("write submission queue doorbell for queue: %d tail: %d\n",
		    io_sq->qid, tail);

	FUNC0(io_sq->bus, tail, io_sq->db_addr);

	if (FUNC2(io_sq)) {
		FUNC1("reset available entries in tx burst for queue %d to %d\n",
			     io_sq->qid, max_entries_in_tx_burst);
		io_sq->entries_in_tx_burst_left = max_entries_in_tx_burst;
	}

	return 0;
}