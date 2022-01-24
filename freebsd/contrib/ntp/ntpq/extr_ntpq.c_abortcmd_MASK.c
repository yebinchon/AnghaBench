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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int TRUE ; 
 scalar_t__ current_output ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  interrupt_buf ; 
 scalar_t__ jump ; 
 int /*<<< orphan*/  FUNC2 (char,scalar_t__) ; 
 scalar_t__ stderr ; 
 scalar_t__ stdout ; 

__attribute__((used)) static int
FUNC3(void)
{
	if (current_output == stdout)
		(void) FUNC1(stdout);
	FUNC2('\n', stderr);
	(void) FUNC1(stderr);
	if (jump) {
		jump = 0;
		FUNC0(interrupt_buf, 1);
	}
	return TRUE;
}