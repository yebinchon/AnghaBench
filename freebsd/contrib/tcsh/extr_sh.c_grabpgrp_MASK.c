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
struct sigaction {int dummy; } ;
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  EPERM ; 
 int /*<<< orphan*/  SIGTTIN ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sigaction*,struct sigaction*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 

int
FUNC4(int fd, pid_t desired)
{
    struct sigaction old;
    pid_t pgrp;
    size_t i;

    for (i = 0; i < 100; i++) {
	if ((pgrp = FUNC3(fd)) == -1)
	    return -1;
	if (pgrp == desired)
	    return 0;
	(void)FUNC1(SIGTTIN, NULL, &old);
	(void)FUNC2(SIGTTIN, SIG_DFL);
	(void)FUNC0(0, SIGTTIN);
	(void)FUNC1(SIGTTIN, &old, NULL);
    }
    errno = EPERM;
    return -1;
}