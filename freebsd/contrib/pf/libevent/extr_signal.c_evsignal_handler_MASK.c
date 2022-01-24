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
 int errno ; 
 int /*<<< orphan*/ * ev_signal_pair ; 
 int /*<<< orphan*/ * evsigcaught ; 
 int evsignal_caught ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC1(int sig)
{
	int save_errno = errno;

	evsigcaught[sig]++;
	evsignal_caught = 1;

	/* Wake up our notification mechanism */
	FUNC0(ev_signal_pair[0], "a", 1);
	errno = save_errno;
}