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
 int /*<<< orphan*/  EX_TEMPFAIL ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int O_NONBLOCK ; 
 int FUNC0 (int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC2(int fd)
{
	int flags;

	flags = FUNC0(fd, F_GETFL);
	if (flags == -1)
		FUNC1(EX_TEMPFAIL, "fcntl(F_GETFL) failed");
	flags &= ~O_NONBLOCK;
	if (FUNC0(fd, F_SETFL, flags) == -1)
		FUNC1(EX_TEMPFAIL, "fcntl(F_SETFL) failed");
}