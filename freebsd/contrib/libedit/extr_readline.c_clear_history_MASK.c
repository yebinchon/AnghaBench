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
typedef  int /*<<< orphan*/  HistEvent ;

/* Variables and functions */
 int /*<<< orphan*/  H_CLEAR ; 
 int /*<<< orphan*/ * e ; 
 int /*<<< orphan*/ * h ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ history_length ; 
 scalar_t__ history_offset ; 
 int /*<<< orphan*/  FUNC1 () ; 

void
FUNC2(void)
{
	HistEvent ev;

	if (h == NULL || e == NULL)
		FUNC1();

	(void)FUNC0(h, &ev, H_CLEAR);
	history_offset = history_length = 0;
}