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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IEEE80211_IOC_CHANINFO ; 
 int /*<<< orphan*/  MAXCHAN ; 
 int /*<<< orphan*/ * chaninfo ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  ifmr ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(int s)
{
	if (chaninfo != NULL)
		return;
	chaninfo = FUNC7(FUNC0(MAXCHAN));
	if (chaninfo == NULL)
		FUNC2(1, "no space for channel list");
	if (FUNC3(s, IEEE80211_IOC_CHANINFO, chaninfo,
	    FUNC0(MAXCHAN)) < 0)
		FUNC1(1, "unable to get channel information");
	ifmr = FUNC6(s);
	FUNC4(s);
	FUNC5(s);
}