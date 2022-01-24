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
typedef  int u8 ;
struct hostapd_data {TYPE_1__* conf; } ;
struct TYPE_2__ {int hs20_release; int /*<<< orphan*/  anqp_domain_id; scalar_t__ disable_dgaf; int /*<<< orphan*/  hs20; } ;

/* Variables and functions */
 int HS20_ANQP_DOMAIN_ID_PRESENT ; 
 int HS20_DGAF_DISABLED ; 
 int /*<<< orphan*/  HS20_INDICATION_OUI_TYPE ; 
 int /*<<< orphan*/  OUI_WFA ; 
 int /*<<< orphan*/  WLAN_EID_VENDOR_SPECIFIC ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ) ; 

u8 * FUNC2(struct hostapd_data *hapd, u8 *eid)
{
	u8 conf;
	if (!hapd->conf->hs20)
		return eid;
	*eid++ = WLAN_EID_VENDOR_SPECIFIC;
	*eid++ = hapd->conf->hs20_release < 2 ? 5 : 7;
	FUNC0(eid, OUI_WFA);
	eid += 3;
	*eid++ = HS20_INDICATION_OUI_TYPE;
	conf = (hapd->conf->hs20_release - 1) << 4; /* Release Number */
	if (hapd->conf->hs20_release >= 2)
		conf |= HS20_ANQP_DOMAIN_ID_PRESENT;
	if (hapd->conf->disable_dgaf)
		conf |= HS20_DGAF_DISABLED;
	*eid++ = conf;
	if (hapd->conf->hs20_release >= 2) {
		FUNC1(eid, hapd->conf->anqp_domain_id);
		eid += 2;
	}

	return eid;
}