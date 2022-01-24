#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int8_t ;
struct ieee80211_country_ie {int* cc; int len; TYPE_1__* band; } ;
struct TYPE_2__ {int schan; int nchan; int maxtxpwr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1(const char *tag, const u_int8_t *ie, size_t ielen, int maxlen)
{
	const struct ieee80211_country_ie *cie =
	   (const struct ieee80211_country_ie *) ie;
	int i, nbands, schan, nchan;

	FUNC0("%s<%c%c%c", tag, cie->cc[0], cie->cc[1], cie->cc[2]);
	nbands = (cie->len - 3) / sizeof(cie->band[0]);
	for (i = 0; i < nbands; i++) {
		schan = cie->band[i].schan;
		nchan = cie->band[i].nchan;
		if (nchan != 1)
			FUNC0(" %u-%u,%u", schan, schan + nchan-1,
			    cie->band[i].maxtxpwr);
		else
			FUNC0(" %u,%u", schan, cie->band[i].maxtxpwr);
	}
	FUNC0(">");
}