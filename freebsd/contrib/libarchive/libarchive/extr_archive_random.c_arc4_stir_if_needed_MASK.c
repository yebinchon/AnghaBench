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
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 scalar_t__ arc4_count ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ arc4_stir_pid ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  rs_initialized ; 

__attribute__((used)) static void
FUNC2(void)
{
	pid_t pid = FUNC1();

	if (arc4_count <= 0 || !rs_initialized || arc4_stir_pid != pid) {
		arc4_stir_pid = pid;
		FUNC0();
	}
}