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
struct winsize {int dummy; } ;
struct termios {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int*,int*,char*,struct termios*,struct winsize*) ; 

int
FUNC4(int *amaster, char *name, struct termios *termp, struct winsize *winp)
{
	int master, slave, pid;

	if (FUNC3(&master, &slave, name, termp, winp) == -1)
		return (-1);
	switch (pid = FUNC1()) {
	case -1:
		(void)FUNC0(slave);
		return (-1);
	case 0:
		/*
		 * child
		 */
		(void)FUNC0(master);
		FUNC2(slave);
		return (0);
	}
	/*
	 * parent
	 */
	*amaster = master;
	(void) FUNC0(slave);
	return (pid);
}