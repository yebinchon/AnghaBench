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
 int /*<<< orphan*/  DIOCSTARTALTQ ; 
 int /*<<< orphan*/  DIOCSTOPALTQ ; 
 scalar_t__ EEXIST ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  EX_UNAVAILABLE ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 

void
FUNC4(int enabled)
{
	int pffd;

	pffd = FUNC3("/dev/pf", O_RDWR);
	if (pffd == -1)
		FUNC1(EX_UNAVAILABLE,
		    "altq support opening pf(4) control device");
	if (enabled) {
		if (FUNC2(pffd, DIOCSTARTALTQ) != 0 && errno != EEXIST)
			FUNC1(EX_UNAVAILABLE, "enabling altq");
	} else {
		if (FUNC2(pffd, DIOCSTOPALTQ) != 0 && errno != ENOENT)
			FUNC1(EX_UNAVAILABLE, "disabling altq");
	}
	FUNC0(pffd);
}