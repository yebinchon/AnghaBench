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
typedef  int /*<<< orphan*/  wps ;
typedef  int /*<<< orphan*/  vhttxmcs ;
typedef  int /*<<< orphan*/  vhtrxmcs ;
typedef  int /*<<< orphan*/  vhtcap ;
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u16 ;
typedef  int /*<<< orphan*/  txpow ;
struct wpabuf {int dummy; } ;
typedef  int /*<<< orphan*/  model_name ;
typedef  int /*<<< orphan*/  htmcs ;
typedef  int /*<<< orphan*/  htcap ;
typedef  int /*<<< orphan*/  htagg ;
typedef  int /*<<< orphan*/  extcap ;

/* Variables and functions */
 int MAX_EXTCAP ; 
 size_t WLAN_EID_EXT_CAPAB ; 
 size_t WLAN_EID_HT_CAP ; 
 size_t WLAN_EID_PWR_CAPABILITY ; 
 size_t WLAN_EID_VENDOR_SPECIFIC ; 
 size_t WLAN_EID_VHT_CAP ; 
 scalar_t__ FUNC0 (size_t const*) ; 
 int /*<<< orphan*/  FUNC1 (size_t const*) ; 
 scalar_t__ FUNC2 (size_t const*) ; 
 scalar_t__ WPS_IE_VENDOR_TYPE ; 
 int /*<<< orphan*/  WPS_NAME_LEN ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ,size_t const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (char*,int,char*,...) ; 
 scalar_t__ FUNC6 (int,int) ; 
 int FUNC7 (char*) ; 
 size_t* FUNC8 (struct wpabuf const*) ; 
 size_t FUNC9 (struct wpabuf const*) ; 

__attribute__((used)) static void FUNC10(char *fstr, size_t fstr_len, const struct wpabuf *ies)
{
	char *fpos = fstr;
	char *fend = fstr + fstr_len;
	char htcap[7 + 4 + 1]; /* ",htcap:" + %04hx + trailing NUL */
	char htagg[7 + 2 + 1]; /* ",htagg:" + %02hx + trailing NUL */
	char htmcs[7 + 8 + 1]; /* ",htmcs:" + %08x + trailing NUL */
	char vhtcap[8 + 8 + 1]; /* ",vhtcap:" + %08x + trailing NUL */
	char vhtrxmcs[10 + 8 + 1]; /* ",vhtrxmcs:" + %08x + trailing NUL */
	char vhttxmcs[10 + 8 + 1]; /* ",vhttxmcs:" + %08x + trailing NUL */
#define MAX_EXTCAP	254
	char extcap[8 + 2 * MAX_EXTCAP + 1]; /* ",extcap:" + hex + trailing NUL
					      */
	char txpow[7 + 4 + 1]; /* ",txpow:" + %04hx + trailing NUL */
#define WPS_NAME_LEN		32
	char wps[WPS_NAME_LEN + 5 + 1]; /* room to prepend ",wps:" + trailing
					 * NUL */
	int num = 0;
	const u8 *ie;
	size_t ie_len;
	int ret;

	FUNC4(htcap, 0, sizeof(htcap));
	FUNC4(htagg, 0, sizeof(htagg));
	FUNC4(htmcs, 0, sizeof(htmcs));
	FUNC4(vhtcap, 0, sizeof(vhtcap));
	FUNC4(vhtrxmcs, 0, sizeof(vhtrxmcs));
	FUNC4(vhttxmcs, 0, sizeof(vhttxmcs));
	FUNC4(extcap, 0, sizeof(extcap));
	FUNC4(txpow, 0, sizeof(txpow));
	FUNC4(wps, 0, sizeof(wps));
	*fpos = '\0';

	if (!ies)
		return;
	ie = FUNC8(ies);
	ie_len = FUNC9(ies);

	while (ie_len >= 2) {
		u8 id, elen;
		char *sep = (num++ == 0) ? "" : ",";

		id = *ie++;
		elen = *ie++;
		ie_len -= 2;

		if (elen > ie_len)
			break;

		if (id == WLAN_EID_VENDOR_SPECIFIC && elen >= 4) {
			/* Vendor specific */
			if (FUNC0(ie) == WPS_IE_VENDOR_TYPE) {
				/* WPS */
				char model_name[WPS_NAME_LEN + 1];
				const u8 *data = &ie[4];
				size_t data_len = elen - 4;

				FUNC4(model_name, 0, sizeof(model_name));
				if (FUNC3(model_name, WPS_NAME_LEN, data,
						 data_len)) {
					FUNC5(wps, sizeof(wps),
						    ",wps:%s", model_name);
				}
			}

			ret = FUNC5(fpos, fend - fpos,
					  "%s%d(%02x%02x%02x,%d)",
					  sep, id, ie[0], ie[1], ie[2], ie[3]);
		} else {
			if (id == WLAN_EID_HT_CAP && elen >= 2) {
				/* HT Capabilities (802.11n) */
				FUNC5(htcap, sizeof(htcap),
					    ",htcap:%04hx",
					    FUNC1(ie));
			}
			if (id == WLAN_EID_HT_CAP && elen >= 3) {
				/* HT Capabilities (802.11n), A-MPDU information
				 */
				FUNC5(htagg, sizeof(htagg),
					    ",htagg:%02hx", (u16) ie[2]);
			}
			if (id == WLAN_EID_HT_CAP && elen >= 7) {
				/* HT Capabilities (802.11n), MCS information */
				FUNC5(htmcs, sizeof(htmcs),
					    ",htmcs:%08hx",
					    (u16) FUNC2(ie + 3));
			}
			if (id == WLAN_EID_VHT_CAP && elen >= 4) {
				/* VHT Capabilities (802.11ac) */
				FUNC5(vhtcap, sizeof(vhtcap),
					    ",vhtcap:%08x",
					    FUNC2(ie));
			}
			if (id == WLAN_EID_VHT_CAP && elen >= 8) {
				/* VHT Capabilities (802.11ac), RX MCS
				 * information */
				FUNC5(vhtrxmcs, sizeof(vhtrxmcs),
					    ",vhtrxmcs:%08x",
					    FUNC2(ie + 4));
			}
			if (id == WLAN_EID_VHT_CAP && elen >= 12) {
				/* VHT Capabilities (802.11ac), TX MCS
				 * information */
				FUNC5(vhttxmcs, sizeof(vhttxmcs),
					    ",vhttxmcs:%08x",
					    FUNC2(ie + 8));
			}
			if (id == WLAN_EID_EXT_CAPAB) {
				/* Extended Capabilities */
				int i;
				int len = (elen < MAX_EXTCAP) ? elen :
					MAX_EXTCAP;
				char *p = extcap;

				p += FUNC5(extcap, sizeof(extcap),
						 ",extcap:");
				for (i = 0; i < len; i++) {
					int lim;

					lim = sizeof(extcap) -
						FUNC7(extcap);
					if (lim <= 0)
						break;
					p += FUNC5(p, lim, "%02x",
							 *(ie + i));
				}
			}
			if (id == WLAN_EID_PWR_CAPABILITY && elen == 2) {
				/* TX Power */
				FUNC5(txpow, sizeof(txpow),
					    ",txpow:%04hx",
					    FUNC1(ie));
			}

			ret = FUNC5(fpos, fend - fpos, "%s%d", sep, id);
		}
		if (FUNC6(fend - fpos, ret))
			goto fail;
		fpos += ret;

		ie += elen;
		ie_len -= elen;
	}

	ret = FUNC5(fpos, fend - fpos, "%s%s%s%s%s%s%s%s%s",
			  htcap, htagg, htmcs, vhtcap, vhtrxmcs, vhttxmcs,
			  txpow, extcap, wps);
	if (FUNC6(fend - fpos, ret)) {
	fail:
		fstr[0] = '\0';
	}
}