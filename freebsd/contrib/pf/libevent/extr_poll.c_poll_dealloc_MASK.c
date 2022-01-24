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
struct pollop {struct pollop* idxplus1_by_fd; struct pollop* event_w_back; struct pollop* event_r_back; struct pollop* event_set; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pollop*) ; 
 int /*<<< orphan*/  FUNC1 (struct pollop*,int /*<<< orphan*/ ,int) ; 

void
FUNC2(void *arg)
{
	struct pollop *pop = arg;

	if (pop->event_set)
		FUNC0(pop->event_set);
	if (pop->event_r_back)
		FUNC0(pop->event_r_back);
	if (pop->event_w_back)
		FUNC0(pop->event_w_back);
	if (pop->idxplus1_by_fd)
		FUNC0(pop->idxplus1_by_fd);

	FUNC1(pop, 0, sizeof(struct pollop));
	FUNC0(pop);
}