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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char const*) ; 
 char* FUNC2 () ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC3(void)
{
	static const char common[] =
	    "[-Cdfnpvy] [-B | -F] [-T fstype:fsoptions] [-t fstype] [-c fstab]";

	(void)FUNC1(stderr, "usage: %s %s [special | node] ...\n",
	    FUNC2(), common);
	FUNC0(1);
}