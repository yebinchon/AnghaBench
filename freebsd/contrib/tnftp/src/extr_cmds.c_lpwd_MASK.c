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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int code ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 char* localcwd ; 
 int /*<<< orphan*/  ttyout ; 
 int /*<<< orphan*/  FUNC2 () ; 

void
FUNC3(int argc, char *argv[])
{

	code = -1;
	if (argc != 1) {
		FUNC0("usage: %s\n", argv[0]);
		return;
	}
	if (! localcwd[0])
		FUNC2();
	if (! localcwd[0])
		FUNC1(ttyout, "Unable to determine local directory\n");
	else {
		FUNC1(ttyout, "Local directory: %s\n", localcwd);
		code = 0;
	}
}