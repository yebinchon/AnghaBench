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
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int O_NONBLOCK ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC1(int f)
{
	int flags;

	/*
	 * We ignore any failures in this function, hence the
	 * non-blocking flag is not critical to the operation of
	 * libUSB. We use F_GETFL and F_SETFL to be compatible with
	 * Linux.
	 */

	flags = FUNC0(f, F_GETFL, NULL);
	if (flags == -1)
		return;
	flags |= O_NONBLOCK;
	FUNC0(f, F_SETFL, flags);
}