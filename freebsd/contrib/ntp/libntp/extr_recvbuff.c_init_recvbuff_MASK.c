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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RecvLock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ free_recvbufs ; 
 scalar_t__ full_recvbufs ; 
 scalar_t__ lowater_adds ; 
 scalar_t__ total_recvbufs ; 
 int /*<<< orphan*/  uninit_recvbuff ; 

void
FUNC3(int nbufs)
{

	/*
	 * Init buffer free list and stat counters
	 */
	free_recvbufs = total_recvbufs = 0;
	full_recvbufs = lowater_adds = 0;

	FUNC2(nbufs);

#if defined(SYS_WINNT)
	InitializeCriticalSection(&RecvLock);
#endif

#ifdef DEBUG
	atexit(&uninit_recvbuff);
#endif
}