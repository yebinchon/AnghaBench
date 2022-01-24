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
struct ieee80211_channel {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC1 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC2 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC3 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC4 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC5 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC6 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC7 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC8 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC9 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC10 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC11 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC12 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC13 (struct ieee80211_channel const*) ; 

__attribute__((used)) static int
FUNC14(const struct ieee80211_channel *c)
{
	if (FUNC9(c))
		return 80;
	if (FUNC13(c))
		return 75;
	if (FUNC12(c))
		return 70;
	if (FUNC11(c))
		return 60;
	if (FUNC10(c))
		return 50;
	if (FUNC5(c))
		return 40;
	if (FUNC4(c))
		return 30;
	if (FUNC3(c))
		return 10;
	if (FUNC7(c))
		return 5;
	if (FUNC8(c))
		return 25;
	if (FUNC0(c))
		return 20;
	if (FUNC2(c))
		return 20;
	if (FUNC1(c))
		return 15;
	if (FUNC6(c))
		return 15;
	return 0;
}