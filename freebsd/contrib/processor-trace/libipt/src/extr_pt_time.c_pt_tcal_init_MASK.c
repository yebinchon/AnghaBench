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
struct pt_time_cal {int /*<<< orphan*/  min_fcr; } ;

/* Variables and functions */
 int /*<<< orphan*/  UINT64_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct pt_time_cal*,int /*<<< orphan*/ ,int) ; 

void FUNC1(struct pt_time_cal *tcal)
{
	if (!tcal)
		return;

	FUNC0(tcal, 0, sizeof(*tcal));

	tcal->min_fcr = UINT64_MAX;
}