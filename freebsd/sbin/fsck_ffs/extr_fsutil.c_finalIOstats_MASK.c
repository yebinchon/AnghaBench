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
 int BT_NUMBUFTYPES ; 
 scalar_t__ debug ; 
 scalar_t__ diskreads ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__* readcnt ; 
 int /*<<< orphan*/ * readtime ; 
 int /*<<< orphan*/  startpass ; 
 int /*<<< orphan*/  startprog ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ totaldiskreads ; 
 scalar_t__* totalreadcnt ; 
 int /*<<< orphan*/ * totalreadtime ; 

void
FUNC3(void)
{
	int i;

	if (debug == 0)
		return;
	FUNC1("Final I/O statistics\n");
	totaldiskreads += diskreads;
	diskreads = totaldiskreads;
	startpass = startprog;
	for (i = 0; i < BT_NUMBUFTYPES; i++) {
		FUNC2(&totalreadtime[i], &readtime[i], &totalreadtime[i]);
		totalreadcnt[i] += readcnt[i];
		readtime[i] = totalreadtime[i];
		readcnt[i] = totalreadcnt[i];
	}
	FUNC0();
}