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
typedef  scalar_t__ time_t ;
struct TYPE_2__ {scalar_t__ previous; scalar_t__ delay_s; } ;

/* Variables and functions */
 TYPE_1__ loop_command ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(void)
{
	time_t cur = FUNC0(NULL);
	if ((loop_command.previous + loop_command.delay_s) < cur) {
		loop_command.previous = cur;
		return 1;
	}
	return 0;
}