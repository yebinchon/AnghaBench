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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1(char * progname) {
	FUNC0("%s: tests libutil humanize_number function\n", progname);
	FUNC0("Usage: %s [-nE] [-l num] [-v]\n\n", progname);
	FUNC0("Options:\n");
	FUNC0("\t-l num\tSet max length for result; buflen = num + 1\n");
	FUNC0("\t\t  (NOTE: does not change expected result strings.)\n");
	FUNC0("\t-n\tInclude negative scale tests, which cause older libutil\n");
	FUNC0("\t\t  version of function to coredump with assertion failure\n");
	FUNC0("\t-E\tInclude numbers > 1/2 Exa[byte] which currently fail\n");
	FUNC0("\t-v\tVerbose - always print summary results\n");
	FUNC0("\t-h, -?\tShow options\n");
}