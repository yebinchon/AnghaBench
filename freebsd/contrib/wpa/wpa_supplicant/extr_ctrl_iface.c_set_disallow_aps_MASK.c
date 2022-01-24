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
struct wpa_ssid_value {int ssid_len; int /*<<< orphan*/  ssid; } ;
typedef  struct wpa_ssid_value u8 ;
struct TYPE_2__ {scalar_t__ prev_bssid_set; } ;
struct wpa_supplicant {size_t disallow_aps_bssid_count; size_t disallow_aps_ssid_count; scalar_t__ wpa_state; int reassociate; int own_disconnect_req; TYPE_1__ sme; int /*<<< orphan*/  bssid; struct wpa_ssid* current_ssid; struct wpa_ssid_value* disallow_aps_ssid; struct wpa_ssid_value* disallow_aps_bssid; } ;
struct wpa_ssid {scalar_t__ mode; int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  ssid; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int SSID_MAX_LEN ; 
 int /*<<< orphan*/  WLAN_REASON_DEAUTH_LEAVING ; 
 scalar_t__ WPAS_MODE_IBSS ; 
 scalar_t__ WPAS_MODE_INFRA ; 
 scalar_t__ WPA_AUTHENTICATING ; 
 int /*<<< orphan*/  FUNC0 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (char*,struct wpa_ssid_value*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_ssid_value*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_ssid_value*,struct wpa_ssid_value*,int) ; 
 struct wpa_ssid_value* FUNC6 (struct wpa_ssid_value*,size_t,int) ; 
 char* FUNC7 (char*,char) ; 
 scalar_t__ FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,struct wpa_ssid_value*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct wpa_supplicant*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct wpa_supplicant *wpa_s, char *val)
{
	char *pos;
	u8 addr[ETH_ALEN], *bssid = NULL, *n;
	struct wpa_ssid_value *ssid = NULL, *ns;
	size_t count = 0, ssid_count = 0;
	struct wpa_ssid *c;

	/*
	 * disallow_list ::= <ssid_spec> | <bssid_spec> | <disallow_list> | ""
	 * SSID_SPEC ::= ssid <SSID_HEX>
	 * BSSID_SPEC ::= bssid <BSSID_HEX>
	 */

	pos = val;
	while (pos) {
		if (*pos == '\0')
			break;
		if (FUNC8(pos, "bssid ", 6) == 0) {
			int res;
			pos += 6;
			res = FUNC3(pos, addr);
			if (res < 0) {
				FUNC4(ssid);
				FUNC4(bssid);
				FUNC11(MSG_DEBUG, "Invalid disallow_aps "
					   "BSSID value '%s'", pos);
				return -1;
			}
			pos += res;
			n = FUNC6(bssid, count + 1, ETH_ALEN);
			if (n == NULL) {
				FUNC4(ssid);
				FUNC4(bssid);
				return -1;
			}
			bssid = n;
			FUNC5(bssid + count * ETH_ALEN, addr, ETH_ALEN);
			count++;
		} else if (FUNC8(pos, "ssid ", 5) == 0) {
			char *end;
			pos += 5;

			end = pos;
			while (*end) {
				if (*end == '\0' || *end == ' ')
					break;
				end++;
			}

			ns = FUNC6(ssid, ssid_count + 1,
					      sizeof(struct wpa_ssid_value));
			if (ns == NULL) {
				FUNC4(ssid);
				FUNC4(bssid);
				return -1;
			}
			ssid = ns;

			if ((end - pos) & 0x01 ||
			    end - pos > 2 * SSID_MAX_LEN ||
			    FUNC2(pos, ssid[ssid_count].ssid,
				       (end - pos) / 2) < 0) {
				FUNC4(ssid);
				FUNC4(bssid);
				FUNC11(MSG_DEBUG, "Invalid disallow_aps "
					   "SSID value '%s'", pos);
				return -1;
			}
			ssid[ssid_count].ssid_len = (end - pos) / 2;
			FUNC10(MSG_DEBUG, "disallow_aps SSID",
					  ssid[ssid_count].ssid,
					  ssid[ssid_count].ssid_len);
			ssid_count++;
			pos = end;
		} else {
			FUNC11(MSG_DEBUG, "Unexpected disallow_aps value "
				   "'%s'", pos);
			FUNC4(ssid);
			FUNC4(bssid);
			return -1;
		}

		pos = FUNC7(pos, ' ');
		if (pos)
			pos++;
	}

	FUNC9(MSG_DEBUG, "disallow_aps_bssid", bssid, count * ETH_ALEN);
	FUNC4(wpa_s->disallow_aps_bssid);
	wpa_s->disallow_aps_bssid = bssid;
	wpa_s->disallow_aps_bssid_count = count;

	FUNC11(MSG_DEBUG, "disallow_aps_ssid_count %d", (int) ssid_count);
	FUNC4(wpa_s->disallow_aps_ssid);
	wpa_s->disallow_aps_ssid = ssid;
	wpa_s->disallow_aps_ssid_count = ssid_count;

	if (!wpa_s->current_ssid || wpa_s->wpa_state < WPA_AUTHENTICATING)
		return 0;

	c = wpa_s->current_ssid;
	if (c->mode != WPAS_MODE_INFRA && c->mode != WPAS_MODE_IBSS)
		return 0;

	if (!FUNC0(wpa_s, wpa_s->bssid) &&
	    !FUNC1(wpa_s, c->ssid, c->ssid_len))
		return 0;

	FUNC11(MSG_DEBUG, "Disconnect and try to find another network "
		   "because current AP was marked disallowed");

#ifdef CONFIG_SME
	wpa_s->sme.prev_bssid_set = 0;
#endif /* CONFIG_SME */
	wpa_s->reassociate = 1;
	wpa_s->own_disconnect_req = 1;
	FUNC12(wpa_s, WLAN_REASON_DEAUTH_LEAVING);
	FUNC13(wpa_s, 0, 0);

	return 0;
}