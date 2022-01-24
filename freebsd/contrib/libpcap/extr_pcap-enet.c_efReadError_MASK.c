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
 scalar_t__ EINVAL ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC4(int fid, char *msg)
{
	if (errno == EINVAL) {	/* read MAXINT bytes already! */
		if (FUNC2(fid, 0, 0) < 0) {
			FUNC3("tcpdump: efReadError/lseek");
			FUNC0(-1);
		}
		else
			return;
	}
	else {
		(void) FUNC1(stderr, "tcpdump: ");
		FUNC3(msg);
		FUNC0(-1);
	}
}