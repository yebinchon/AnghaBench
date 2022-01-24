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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC2 () ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC3(void)
{
	const char	*p;

	p = FUNC2();

	FUNC1(stderr, "Usage:\n");
	FUNC1(stderr, "  List:    %s -tf <archive-filename>\n", p);
	FUNC1(stderr, "  Extract: %s -xf <archive-filename>\n", p);
	FUNC1(stderr, "  Create:  %s -cf <archive-filename> [filenames...]\n", p);
	FUNC1(stderr, "  Help:    %s --help\n", p);
	FUNC0(1);
}