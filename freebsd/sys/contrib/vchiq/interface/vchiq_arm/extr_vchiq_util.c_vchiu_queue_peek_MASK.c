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
struct TYPE_3__ {int write; int read; int size; int /*<<< orphan*/ ** storage; int /*<<< orphan*/  push; } ;
typedef  TYPE_1__ VCHIU_QUEUE_T ;
typedef  int /*<<< orphan*/  VCHIQ_HEADER_T ;

/* Variables and functions */
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

VCHIQ_HEADER_T *FUNC4(VCHIU_QUEUE_T *queue)
{
	while (queue->write == queue->read) {
		if (FUNC0(&queue->push) != 0) {
			FUNC1(current);
		}
	}

	FUNC3(&queue->push); // We haven't removed anything from the queue.

	/*
	 * Read from queue->storage must be visible after read from
	 * queue->write
	 */
	FUNC2();

	return queue->storage[queue->read & (queue->size - 1)];
}