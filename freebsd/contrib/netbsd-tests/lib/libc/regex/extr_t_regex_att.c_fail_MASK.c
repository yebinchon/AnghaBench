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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t,char const*,char const*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC1(const char *pattern, const char *input, size_t lineno) {
	FUNC0(stderr,
	    "skipping failed test at line %zu (pattern=%s, input=%s)\n",
	    lineno, pattern, input);
}