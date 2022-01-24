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
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  WNOHANG ; 
 int errno ; 
 scalar_t__ FUNC0 (int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(int sig)
{
	int save_errno = errno;
	pid_t pid;
	int status;

	while ((pid = FUNC0(-1, &status, WNOHANG)) > 0 ||
	    (pid < 0 && errno == EINTR))
		;
	errno = save_errno;
}