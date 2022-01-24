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
typedef  int /*<<< orphan*/  u8 ;
struct hostapd_wpa_psk {int vlan_id; int group; struct hostapd_wpa_psk* next; int /*<<< orphan*/  keyid; int /*<<< orphan*/  psk; int /*<<< orphan*/  addr; } ;
struct hostapd_ssid {struct hostapd_wpa_psk* wpa_psk; int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  ssid; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  PMK_LEN ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct hostapd_wpa_psk*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int FUNC11 (int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC12 (char*) ; 
 struct hostapd_wpa_psk* FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC15 (char*,char*,char**) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC17(const char *fname,
				       struct hostapd_ssid *ssid)
{
	FILE *f;
	char buf[128], *pos;
	const char *keyid;
	char *context;
	char *context2;
	char *token;
	char *name;
	char *value;
	int line = 0, ret = 0, len, ok;
	u8 addr[ETH_ALEN];
	struct hostapd_wpa_psk *psk;

	if (!fname)
		return 0;

	f = FUNC3(fname, "r");
	if (!f) {
		FUNC16(MSG_ERROR, "WPA PSK file '%s' not found.", fname);
		return -1;
	}

	while (FUNC2(buf, sizeof(buf), f)) {
		int vlan_id = 0;

		line++;

		if (buf[0] == '#')
			continue;
		pos = buf;
		while (*pos != '\0') {
			if (*pos == '\n') {
				*pos = '\0';
				break;
			}
			pos++;
		}
		if (buf[0] == '\0')
			continue;

		context = NULL;
		keyid = NULL;
		while ((token = FUNC15(buf, " ", &context))) {
			if (!FUNC9(token, '='))
				break;
			context2 = NULL;
			name = FUNC15(token, "=", &context2);
			if (!name)
				break;
			value = FUNC15(token, "", &context2);
			if (!value)
				value = "";
			if (!FUNC10(name, "keyid")) {
				keyid = value;
			} else if (!FUNC10(name, "vlanid")) {
				vlan_id = FUNC0(value);
			} else {
				FUNC16(MSG_ERROR,
					   "Unrecognized '%s=%s' on line %d in '%s'",
					   name, value, line, fname);
				ret = -1;
				break;
			}
		}

		if (ret == -1)
			break;

		if (!token)
			token = "";
		if (FUNC5(token, addr)) {
			FUNC16(MSG_ERROR, "Invalid MAC address '%s' on "
				   "line %d in '%s'", token, line, fname);
			ret = -1;
			break;
		}

		psk = FUNC13(sizeof(*psk));
		if (psk == NULL) {
			FUNC16(MSG_ERROR, "WPA PSK allocation failed");
			ret = -1;
			break;
		}
		psk->vlan_id = vlan_id;
		if (FUNC6(addr))
			psk->group = 1;
		else
			FUNC8(psk->addr, addr, ETH_ALEN);

		pos = FUNC15(buf, "", &context);
		if (!pos) {
			FUNC16(MSG_ERROR, "No PSK on line %d in '%s'",
				   line, fname);
			FUNC7(psk);
			ret = -1;
			break;
		}

		ok = 0;
		len = FUNC12(pos);
		if (len == 64 && FUNC4(pos, psk->psk, PMK_LEN) == 0)
			ok = 1;
		else if (len >= 8 && len < 64) {
			FUNC14(pos, ssid->ssid, ssid->ssid_len,
				    4096, psk->psk, PMK_LEN);
			ok = 1;
		}
		if (!ok) {
			FUNC16(MSG_ERROR, "Invalid PSK '%s' on line %d in "
				   "'%s'", pos, line, fname);
			FUNC7(psk);
			ret = -1;
			break;
		}

		if (keyid) {
			len = FUNC11(psk->keyid, keyid, sizeof(psk->keyid));
			if ((size_t) len >= sizeof(psk->keyid)) {
				FUNC16(MSG_ERROR,
					   "PSK keyid too long on line %d in '%s'",
					   line, fname);
				FUNC7(psk);
				ret = -1;
				break;
			}
		}

		psk->next = ssid->wpa_psk;
		ssid->wpa_psk = psk;
	}

	FUNC1(f);

	return ret;
}