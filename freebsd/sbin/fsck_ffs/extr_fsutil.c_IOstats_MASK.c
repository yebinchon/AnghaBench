#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ tv_sec; } ;
struct TYPE_6__ {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;

/* Variables and functions */
 int BT_NUMBUFTYPES ; 
 int /*<<< orphan*/  CLOCK_REALTIME_PRECISE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ debug ; 
 scalar_t__ diskreads ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 scalar_t__* readcnt ; 
 TYPE_1__* readtime ; 
 TYPE_2__ startpass ; 
 TYPE_2__ startprog ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  totaldiskreads ; 
 int /*<<< orphan*/ * totalreadcnt ; 
 int /*<<< orphan*/ * totalreadtime ; 

void
FUNC4(char *what)
{
	int i;

	if (debug == 0)
		return;
	if (diskreads == 0) {
		FUNC2("%s: no I/O\n\n", what);
		return;
	}
	if (startpass.tv_sec == 0)
		startpass = startprog;
	FUNC2("%s: I/O statistics\n", what);
	FUNC1();
	totaldiskreads += diskreads;
	diskreads = 0;
	for (i = 0; i < BT_NUMBUFTYPES; i++) {
		FUNC3(&totalreadtime[i], &readtime[i], &totalreadtime[i]);
		totalreadcnt[i] += readcnt[i];
		readtime[i].tv_sec = readtime[i].tv_nsec = 0;
		readcnt[i] = 0;
	}
	FUNC0(CLOCK_REALTIME_PRECISE, &startpass);
}