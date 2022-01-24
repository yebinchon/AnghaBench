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
struct ddi_soft_state {int /*<<< orphan*/  ss_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ddi_soft_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(void *state, int item)
{
	struct ddi_soft_state *ss = state;

	FUNC1(&ss->ss_lock);
	FUNC0(ss, item);
	FUNC2(&ss->ss_lock);
}