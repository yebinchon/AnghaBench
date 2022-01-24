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
 unsigned int NSIG ; 
 int /*<<< orphan*/  STALL_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char** sys_siglist ; 

__attribute__((used)) static void
FUNC3(int sig)
{

	FUNC1("fatal signal: %s",
	    (unsigned)sig < NSIG ? sys_siglist[sig] : "unknown signal");

	FUNC2(STALL_TIMEOUT);
	FUNC0(sig);		/* reboot */
}