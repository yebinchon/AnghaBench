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
 int IEEE80211_RATE_MCS ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 

__attribute__((used)) static void
FUNC1(const char *tag, int v, int defrate, int defmcs)
{
	if ((v & IEEE80211_RATE_MCS) == 0) {
		if (v != defrate) {
			if (v & 1)
				FUNC0("%s %d.5", tag, v/2);
			else
				FUNC0("%s %d", tag, v/2);
		}
	} else {
		if (v != defmcs)
			FUNC0("%s %d", tag, v &~ 0x80);
	}
}