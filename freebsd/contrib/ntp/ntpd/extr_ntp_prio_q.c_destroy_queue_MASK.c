#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* node_next; struct TYPE_5__* front; } ;
typedef  TYPE_1__ queue ;
typedef  TYPE_1__ node ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

void FUNC1(
	queue *my_queue
	)
{
    node *temp = NULL;

    /* Empty out the queue elements if they are not already empty */
    while (my_queue->front != NULL) {
        temp = my_queue->front;
        my_queue->front = my_queue->front->node_next;
        FUNC0(temp);
    }

    /* Now free the queue */
    FUNC0(my_queue);
}