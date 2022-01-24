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
 int /*<<< orphan*/  DIOCSTART ; 
 int /*<<< orphan*/  DIOCSTARTALTQ ; 
 scalar_t__ EEXIST ; 
 scalar_t__ ESRCH ; 
 int PF_OPT_QUIET ; 
 scalar_t__ altqsupport ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC4(int dev, int opts)
{
	if (FUNC3(dev, DIOCSTART)) {
		if (errno == EEXIST)
			FUNC1(1, "pf already enabled");
		else if (errno == ESRCH)
			FUNC1(1, "pfil registeration failed");
		else
			FUNC0(1, "DIOCSTART");
	}
	if ((opts & PF_OPT_QUIET) == 0)
		FUNC2(stderr, "pf enabled\n");

	if (altqsupport && FUNC3(dev, DIOCSTARTALTQ))
		if (errno != EEXIST)
			FUNC0(1, "DIOCSTARTALTQ");

	return (0);
}