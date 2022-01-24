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
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int muxserver_pid ; 

__attribute__((used)) static void
FUNC1(int signo)
{
	int save_errno = errno;

	if (muxserver_pid > 1)
		FUNC0(muxserver_pid, signo);

	errno = save_errno;
}