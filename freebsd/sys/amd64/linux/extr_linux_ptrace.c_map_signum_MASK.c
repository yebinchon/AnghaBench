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
 int EINVAL ; 
 int LINUX_SIGRTMAX ; 
 int SIGSTOP ; 
 int FUNC0 (int) ; 

__attribute__((used)) static int
FUNC1(int lsig, int *bsigp)
{
	int bsig;

	if (lsig == 0) {
		*bsigp = 0;
		return (0);
	}

	if (lsig < 0 || lsig > LINUX_SIGRTMAX)
		return (EINVAL);

	bsig = FUNC0(lsig);
	if (bsig == SIGSTOP)
		bsig = 0;

	*bsigp = bsig;
	return (0);
}