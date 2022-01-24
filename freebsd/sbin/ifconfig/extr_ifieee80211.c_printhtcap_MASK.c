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
struct ieee80211_ie_htcap {int hc_param; int hc_antenna; int /*<<< orphan*/  hc_txbf; int /*<<< orphan*/  hc_extcap; int /*<<< orphan*/  hc_mcsset; int /*<<< orphan*/  hc_cap; } ;

/* Variables and functions */
 int IEEE80211_HTRATE_MAXSIZE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static void
FUNC5(const char *tag, const u_int8_t *ie, size_t ielen, int maxlen)
{
	FUNC4("%s", tag);
	if (verbose) {
		const struct ieee80211_ie_htcap *htcap =
		    (const struct ieee80211_ie_htcap *) ie;
		const char *sep;
		int i, j;

		FUNC4("<cap 0x%x param 0x%x",
		    FUNC0(&htcap->hc_cap), htcap->hc_param);
		FUNC4(" mcsset[");
		sep = "";
		for (i = 0; i < IEEE80211_HTRATE_MAXSIZE; i++)
			if (FUNC3(htcap->hc_mcsset, i)) {
				for (j = i+1; j < IEEE80211_HTRATE_MAXSIZE; j++)
					if (FUNC2(htcap->hc_mcsset, j))
						break;
				j--;
				if (i == j)
					FUNC4("%s%u", sep, i);
				else
					FUNC4("%s%u-%u", sep, i, j);
				i += j-i;
				sep = ",";
			}
		FUNC4("] extcap 0x%x txbf 0x%x antenna 0x%x>",
		    FUNC0(&htcap->hc_extcap),
		    FUNC1(&htcap->hc_txbf),
		    htcap->hc_antenna);
	}
}