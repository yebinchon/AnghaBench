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
 int /*<<< orphan*/  IEEE80211_IOC_HTCONF ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int gothtconf ; 
 int /*<<< orphan*/  htconf ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void
FUNC2(int s)
{
	if (gothtconf)
		return;
	if (FUNC0(s, IEEE80211_IOC_HTCONF, &htconf) < 0)
		FUNC1("unable to get HT configuration information");
	gothtconf = 1;
}