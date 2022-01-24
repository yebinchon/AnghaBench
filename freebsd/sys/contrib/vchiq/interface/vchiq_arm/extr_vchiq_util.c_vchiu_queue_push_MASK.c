#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int write; int read; int size; int /*<<< orphan*/  push; int /*<<< orphan*/ ** storage; int /*<<< orphan*/  pop; int /*<<< orphan*/  initialized; } ;
typedef  TYPE_1__ VCHIU_QUEUE_T ;
typedef  int /*<<< orphan*/  VCHIQ_HEADER_T ;

/* Variables and functions */
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(VCHIU_QUEUE_T *queue, VCHIQ_HEADER_T *header)
{
	if (!queue->initialized)
		return;

	while (queue->write == queue->read + queue->size) {
		if (FUNC0(&queue->pop) != 0) {
			FUNC1(current);
		}
	}

	/*
	 * Write to queue->storage must be visible after read from
	 * queue->read
	 */
	FUNC2();

	queue->storage[queue->write & (queue->size - 1)] = header;

	/*
	 * Write to queue->storage must be visible before write to
	 * queue->write
	 */
	FUNC3();

	queue->write++;

	FUNC4(&queue->push);
}