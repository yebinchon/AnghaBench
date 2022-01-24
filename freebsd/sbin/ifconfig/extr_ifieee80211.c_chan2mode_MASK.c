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
typedef  enum ieee80211_phymode { ____Placeholder_ieee80211_phymode } ieee80211_phymode ;

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
 int IEEE80211_MODE_11A ; 
 int IEEE80211_MODE_11B ; 
 int IEEE80211_MODE_11G ; 
 int IEEE80211_MODE_11NA ; 
 int IEEE80211_MODE_11NG ; 
 int IEEE80211_MODE_AUTO ; 
 int IEEE80211_MODE_FH ; 
 int IEEE80211_MODE_HALF ; 
 int IEEE80211_MODE_QUARTER ; 
 int IEEE80211_MODE_STURBO_A ; 
 int IEEE80211_MODE_TURBO_A ; 
 int IEEE80211_MODE_TURBO_G ; 
 int IEEE80211_MODE_VHT_2GHZ ; 
 int IEEE80211_MODE_VHT_5GHZ ; 

__attribute__((used)) static enum ieee80211_phymode
FUNC13(const struct ieee80211_channel *c)
{
	if (FUNC11(c))
		return IEEE80211_MODE_VHT_5GHZ;
	if (FUNC12(c))
		return IEEE80211_MODE_VHT_2GHZ;
	if (FUNC7(c))
		return IEEE80211_MODE_11NA;
	if (FUNC8(c))
		return IEEE80211_MODE_11NG;
	if (FUNC0(c))
		return IEEE80211_MODE_TURBO_A;
	if (FUNC1(c))
		return IEEE80211_MODE_TURBO_G;
	if (FUNC10(c))
		return IEEE80211_MODE_STURBO_A;
	if (FUNC5(c))
		return IEEE80211_MODE_FH;
	if (FUNC6(c))
		return IEEE80211_MODE_HALF;
	if (FUNC9(c))
		return IEEE80211_MODE_QUARTER;
	if (FUNC2(c))
		return IEEE80211_MODE_11A;
	if (FUNC3(c))
		return IEEE80211_MODE_11G;
	if (FUNC4(c))
		return IEEE80211_MODE_11B;
	return IEEE80211_MODE_AUTO;
}