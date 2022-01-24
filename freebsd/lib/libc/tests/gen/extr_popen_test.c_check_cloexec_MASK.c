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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int,...) ; 
 int FD_CLOEXEC ; 
 int /*<<< orphan*/  F_GETFD ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char) ; 

__attribute__((used)) static void
FUNC4(FILE *fp, const char *mode)
{
	int exp_flags, flags;

	flags = FUNC1(FUNC2(fp), F_GETFD);
	FUNC0(flags != -1, "fcntl(F_GETFD) failed; errno=%d", errno);
	if (flags == -1)
		return;
	if (FUNC3(mode, 'e') != NULL)
		exp_flags = FD_CLOEXEC;
	else
		exp_flags = 0;
	FUNC0((flags & FD_CLOEXEC) == exp_flags,
	    "bad cloexec flag; %d != %d", flags, exp_flags);
}