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
struct ieee80211_channel {int ic_ieee; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_channel*,int,int) ; 

__attribute__((used)) static int
FUNC1(int freq, int flags)
{
	struct ieee80211_channel chan;
	FUNC0(&chan, freq, flags);
	return chan.ic_ieee;
}