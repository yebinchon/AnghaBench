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
 int /*<<< orphan*/  IEEE80211_IOC_VHTCONF ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int gotvhtconf ; 
 int /*<<< orphan*/  vhtconf ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void
FUNC2(int s)
{
	if (gotvhtconf)
		return;
	if (FUNC0(s, IEEE80211_IOC_VHTCONF, &vhtconf) < 0)
		FUNC1("unable to get VHT configuration information");
	gotvhtconf = 1;
}