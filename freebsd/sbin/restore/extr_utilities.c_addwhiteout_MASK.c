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
 int FAIL ; 
 int GOOD ; 
 int /*<<< orphan*/  Nflag ; 
 int /*<<< orphan*/  S_IFWHT ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 

int
FUNC4(char *name)
{

	if (!Nflag && FUNC1(name, S_IFWHT, 0) < 0) {
		FUNC0(stderr, "warning: cannot create whiteout %s: %s\n",
		    name, FUNC2(errno));
		return (FAIL);
	}
	FUNC3(stdout, "Create whiteout %s\n", name);
	return (GOOD);
}