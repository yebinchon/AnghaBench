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
struct ieee80211_channel {int ic_minpower; int ic_maxpower; int ic_maxregpower; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_channel const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(const struct ieee80211_channel *c)
{
	FUNC0(c, 1);
	FUNC1("min %4.1f dBm  max %3.1f dBm  reg %2d dBm",
	    c->ic_minpower/2., c->ic_maxpower/2., c->ic_maxregpower);
	/* indicate where regulatory cap limits power use */
	if (c->ic_maxpower > 2*c->ic_maxregpower)
		FUNC1(" <");
}