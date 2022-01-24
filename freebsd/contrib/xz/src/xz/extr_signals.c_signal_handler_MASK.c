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
 int exit_signal ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int user_abort ; 

__attribute__((used)) static void
FUNC1(int sig)
{
	exit_signal = sig;
	user_abort = true;

#ifndef TUKLIB_DOSLIKE
	FUNC0();
#endif

	return;
}