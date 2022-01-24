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
 scalar_t__ FUNC14 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC15 (struct ieee80211_channel const*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,size_t) ; 

__attribute__((used)) static const char *
FUNC17(const struct ieee80211_channel *c, int precise,
	char buf[], size_t bsize)
{
	buf[0] = '\0';
	if (FUNC3(c))
		FUNC16(buf, " FHSS", bsize);
	if (FUNC0(c))
		FUNC16(buf, " 11a", bsize);
	else if (FUNC1(c))
		FUNC16(buf, " 11g", bsize);
	else if (FUNC2(c))
		FUNC16(buf, " 11b", bsize);
	if (FUNC4(c))
		FUNC16(buf, "/10MHz", bsize);
	if (FUNC9(c))
		FUNC16(buf, "/5MHz", bsize);
	if (FUNC10(c))
		FUNC16(buf, " Turbo", bsize);
	if (precise) {
		/* XXX should make VHT80U, VHT80D */
		if (FUNC15(c) &&
		    FUNC7(c))
			FUNC16(buf, " vht/80-", bsize);
		else if (FUNC15(c) &&
		    FUNC8(c))
			FUNC16(buf, " vht/80+", bsize);
		else if (FUNC15(c))
			FUNC16(buf, " vht/80", bsize);
		else if (FUNC13(c))
			FUNC16(buf, " vht/40-", bsize);
		else if (FUNC14(c))
			FUNC16(buf, " vht/40+", bsize);
		else if (FUNC12(c))
			FUNC16(buf, " vht/20", bsize);
		else if (FUNC6(c))
			FUNC16(buf, " ht/20", bsize);
		else if (FUNC7(c))
			FUNC16(buf, " ht/40-", bsize);
		else if (FUNC8(c))
			FUNC16(buf, " ht/40+", bsize);
	} else {
		if (FUNC11(c))
			FUNC16(buf, " vht", bsize);
		else if (FUNC5(c))
			FUNC16(buf, " ht", bsize);
	}
	return buf;
}