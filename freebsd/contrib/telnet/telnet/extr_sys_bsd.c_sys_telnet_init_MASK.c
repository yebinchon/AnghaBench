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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SIGINFO ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGTSTP ; 
 int /*<<< orphan*/  SIGWINCH ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_OOBINLINE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ayt ; 
 int /*<<< orphan*/  intr ; 
 int /*<<< orphan*/  intr2 ; 
 int /*<<< orphan*/  net ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  sendwin ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  susp ; 

void
FUNC5(void)
{
    (void) FUNC4(SIGINT, intr);
    (void) FUNC4(SIGQUIT, intr2);
    (void) FUNC4(SIGPIPE, SIG_IGN);
#ifdef	SIGWINCH
    (void) signal(SIGWINCH, sendwin);
#endif
#ifdef	SIGTSTP
    (void) signal(SIGTSTP, susp);
#endif
#ifdef	SIGINFO
    (void) signal(SIGINFO, ayt);
#endif

    FUNC3(0);

    FUNC0(net, 1);

#if	defined(SO_OOBINLINE)
    if (SetSockOpt(net, SOL_SOCKET, SO_OOBINLINE, 1) == -1) {
	perror("SetSockOpt");
    }
#endif	/* defined(SO_OOBINLINE) */
}