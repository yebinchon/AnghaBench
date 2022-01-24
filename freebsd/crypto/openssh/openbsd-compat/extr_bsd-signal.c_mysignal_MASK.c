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
struct sigaction {scalar_t__ sa_handler; int /*<<< orphan*/  sa_flags; int /*<<< orphan*/  sa_mask; } ;
typedef  int /*<<< orphan*/  sa ;
typedef  scalar_t__ mysig_t ;

/* Variables and functions */
 int /*<<< orphan*/  SA_INTERRUPT ; 
 int SIGALRM ; 
 int /*<<< orphan*/  FUNC0 (struct sigaction*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int,struct sigaction*,struct sigaction*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int,scalar_t__) ; 

mysig_t
FUNC4(int sig, mysig_t act)
{
#ifdef HAVE_SIGACTION
	struct sigaction sa, osa;

	if (sigaction(sig, NULL, &osa) == -1)
		return (mysig_t) -1;
	if (osa.sa_handler != act) {
		memset(&sa, 0, sizeof(sa));
		sigemptyset(&sa.sa_mask);
		sa.sa_flags = 0;
#ifdef SA_INTERRUPT
		if (sig == SIGALRM)
			sa.sa_flags |= SA_INTERRUPT;
#endif
		sa.sa_handler = act;
		if (sigaction(sig, &sa, NULL) == -1)
			return (mysig_t) -1;
	}
	return (osa.sa_handler);
#else
	return (FUNC3(sig, act));
#endif
}