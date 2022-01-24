#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__* sptr; } ;

/* Variables and functions */
 scalar_t__ SIGINFO ; 
 size_t SLC_AYT ; 
 int /*<<< orphan*/  TCSIG ; 
 scalar_t__ _POSIX_VDISABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ourpty ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__* slctab ; 

void
FUNC2()
{
#if	defined(SIGINFO) && defined(TCSIG)
    if (slctab[SLC_AYT].sptr && *slctab[SLC_AYT].sptr != _POSIX_VDISABLE) {
	ioctl(ourpty, TCSIG, (char *)SIGINFO);
	return;
    }
#endif
    FUNC1("\r\n[Yes]\r\n");
}