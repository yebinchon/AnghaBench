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
 scalar_t__ EINTR ; 
 int SIGSTOP ; 
 int /*<<< orphan*/  WUNTRACED ; 
 scalar_t__ errno ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int sshpid ; 
 int FUNC2 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(int signo)
{
	if (sshpid > 1) {
		FUNC1(sshpid, signo);
		while (FUNC2(sshpid, NULL, WUNTRACED) == -1 && errno == EINTR)
			continue;
	}
	FUNC1(FUNC0(), SIGSTOP);
}