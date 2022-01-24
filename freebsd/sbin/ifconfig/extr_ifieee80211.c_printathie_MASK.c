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
typedef  int /*<<< orphan*/  u_int8_t ;
struct ieee80211_ath_ie {int ath_capability; int /*<<< orphan*/  ath_defkeyix; } ;

/* Variables and functions */
 int ATHEROS_CAP_AR ; 
 int ATHEROS_CAP_BOOST ; 
 int ATHEROS_CAP_BURST ; 
 int ATHEROS_CAP_COMPRESSION ; 
 int ATHEROS_CAP_FAST_FRAME ; 
 int ATHEROS_CAP_TURBO_PRIME ; 
 int ATHEROS_CAP_WME ; 
 int ATHEROS_CAP_XR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static void
FUNC2(const char *tag, const u_int8_t *ie, size_t ielen, int maxlen)
{

	FUNC1("%s", tag);
	if (verbose) {
		const struct ieee80211_ath_ie *ath =
			(const struct ieee80211_ath_ie *)ie;

		FUNC1("<");
		if (ath->ath_capability & ATHEROS_CAP_TURBO_PRIME)
			FUNC1("DTURBO,");
		if (ath->ath_capability & ATHEROS_CAP_COMPRESSION)
			FUNC1("COMP,");
		if (ath->ath_capability & ATHEROS_CAP_FAST_FRAME)
			FUNC1("FF,");
		if (ath->ath_capability & ATHEROS_CAP_XR)
			FUNC1("XR,");
		if (ath->ath_capability & ATHEROS_CAP_AR)
			FUNC1("AR,");
		if (ath->ath_capability & ATHEROS_CAP_BURST)
			FUNC1("BURST,");
		if (ath->ath_capability & ATHEROS_CAP_WME)
			FUNC1("WME,");
		if (ath->ath_capability & ATHEROS_CAP_BOOST)
			FUNC1("BOOST,");
		FUNC1("0x%x>", FUNC0(ath->ath_defkeyix));
	}
}