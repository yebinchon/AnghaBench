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
 int /*<<< orphan*/  FUNC0 (char*,char const*,char const*,...) ; 

void
FUNC1(const char *func, const char *file, int line, const char *expression)
{
	if (func == NULL)
		FUNC0("Assertion failed: (%s), file %s, line %d.",
		    expression, file, line);
	else
		FUNC0(
		    "Assertion failed: (%s), function %s, file %s, line %d.",
		    expression, func, file, line);
}