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
struct sigaction {void* sa_handler; int /*<<< orphan*/  sa_mask; scalar_t__ sa_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGXCPU ; 
 void* SIG_IGN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 
 void* sigterm ; 

void
FUNC3(void)
{
#ifdef HAVE_SIGACTION
    {
	struct sigaction sa;

	sa.sa_flags = 0;
	sa.sa_handler = sigterm;
	sigemptyset(&sa.sa_mask);

	sigaction(SIGINT, &sa, NULL);
	sigaction(SIGTERM, &sa, NULL);
	sigaction(SIGXCPU, &sa, NULL);

	sa.sa_handler = SIG_IGN;
	sigaction(SIGPIPE, &sa, NULL);
    }
#else
    FUNC2(SIGINT, sigterm);
    FUNC2(SIGTERM, sigterm);
#ifndef NO_SIGXCPU
    FUNC2(SIGXCPU, sigterm);
#endif
#ifndef NO_SIGPIPE
    FUNC2(SIGPIPE, SIG_IGN);
#endif
#endif
}