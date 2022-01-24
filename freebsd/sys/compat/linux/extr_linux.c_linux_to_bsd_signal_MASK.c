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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int LINUX_SIGRTMAX ; 
 int LINUX_SIGRTMIN ; 
 size_t FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int* linux_to_bsd_sigtbl ; 

int
FUNC3(int sig)
{

	FUNC0(sig > 0 && sig <= LINUX_SIGRTMAX, ("invalid Linux signal %d\n", sig));

	if (sig < LINUX_SIGRTMIN)
		return (linux_to_bsd_sigtbl[FUNC1(sig)]);

	return (FUNC2(sig));
}