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
typedef  int u8 ;
struct wpa_supplicant {int dummy; } ;
struct neighbor_report {int regulatory_class; int channel_number; int phy_type; int /*<<< orphan*/  freq; int /*<<< orphan*/  bssid_info; int /*<<< orphan*/  bssid; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct neighbor_report*,int,int,int const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC5(struct wpa_supplicant *wpa_s,
				      const u8 *pos, u8 len,
				      struct neighbor_report *rep)
{
	u8 left = len;

	if (left < 13) {
		FUNC4(MSG_DEBUG, "WNM: Too short neighbor report");
		return;
	}

	FUNC1(rep->bssid, pos, ETH_ALEN);
	rep->bssid_info = FUNC0(pos + ETH_ALEN);
	rep->regulatory_class = *(pos + 10);
	rep->channel_number = *(pos + 11);
	rep->phy_type = *(pos + 12);

	pos += 13;
	left -= 13;

	while (left >= 2) {
		u8 id, elen;

		id = *pos++;
		elen = *pos++;
		FUNC4(MSG_DEBUG, "WNM: Subelement id=%u len=%u", id, elen);
		left -= 2;
		if (elen > left) {
			FUNC4(MSG_DEBUG,
				   "WNM: Truncated neighbor report subelement");
			break;
		}
		FUNC3(rep, id, elen, pos);
		left -= elen;
		pos += elen;
	}

	rep->freq = FUNC2(wpa_s, rep->regulatory_class,
				     rep->channel_number);
}