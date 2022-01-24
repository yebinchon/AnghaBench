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
 int /*<<< orphan*/  MSG_ERROR ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 

__attribute__((used)) static int FUNC2(int line, const char *value)
{
	int val = FUNC0(value);
	if (val < 0) {
		FUNC1(MSG_ERROR, "Line %d: invalid cipher '%s'.",
			   line, value);
		return -1;
	}
	if (val == 0) {
		FUNC1(MSG_ERROR, "Line %d: no cipher values configured.",
			   line);
		return -1;
	}
	return val;
}