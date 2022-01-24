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
 int LINUX_SIGPWR ; 
 int LINUX_SIGTBLSZ ; 
 int SIGRTMIN ; 
 size_t FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int* bsd_to_linux_sigtbl ; 

int
FUNC2(int sig)
{

	if (sig <= LINUX_SIGTBLSZ)
		return (bsd_to_linux_sigtbl[FUNC0(sig)]);
	if (sig == SIGRTMIN)
		return (LINUX_SIGPWR);

	return (FUNC1(sig));
}