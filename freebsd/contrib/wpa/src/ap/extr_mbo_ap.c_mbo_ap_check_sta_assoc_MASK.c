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
struct sta_info {int cell_capa; } ;
struct ieee802_11_elems {int* mbo; int mbo_len; } ;
struct hostapd_data {TYPE_1__* conf; } ;
struct TYPE_2__ {int /*<<< orphan*/  mbo_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  MBO_ATTR_ID_CELL_DATA_CAPA ; 
 int const MBO_ATTR_ID_NON_PREF_CHAN_REPORT ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int* FUNC0 (int const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sta_info*,int const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sta_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int const*,size_t) ; 

void FUNC4(struct hostapd_data *hapd, struct sta_info *sta,
			    struct ieee802_11_elems *elems)
{
	const u8 *pos, *attr, *end;
	size_t len;

	if (!hapd->conf->mbo_enabled || !elems->mbo)
		return;

	pos = elems->mbo + 4;
	len = elems->mbo_len - 4;
	FUNC3(MSG_DEBUG, "MBO: Association Request attributes", pos, len);

	attr = FUNC0(pos, len, MBO_ATTR_ID_CELL_DATA_CAPA);
	if (attr && attr[1] >= 1)
		sta->cell_capa = attr[2];

	FUNC2(sta);
	end = pos + len;
	while (end - pos > 1) {
		u8 ie_len = pos[1];

		if (2 + ie_len > end - pos)
			break;

		if (pos[0] == MBO_ATTR_ID_NON_PREF_CHAN_REPORT)
			FUNC1(sta, pos + 2, ie_len);
		pos += 2 + pos[1];
	}
}