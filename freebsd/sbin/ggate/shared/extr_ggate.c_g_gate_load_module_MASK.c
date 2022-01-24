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
 scalar_t__ EEXIST ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (char*) ; 
 int FUNC2 (char*) ; 

void
FUNC3(void)
{

	if (FUNC2("g_gate") == -1) {
		/* Not present in kernel, try loading it. */
		if (FUNC1("geom_gate") == -1 || FUNC2("g_gate") == -1) {
			if (errno != EEXIST) {
				FUNC0(EXIT_FAILURE,
				    "geom_gate module not available!");
			}
		}
	}
}