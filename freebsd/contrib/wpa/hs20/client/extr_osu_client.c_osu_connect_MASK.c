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
struct wpa_ctrl {int dummy; } ;
struct hs20_osu_client {char* ifname; int no_reconnect; scalar_t__ osu_ssid; } ;
typedef  int /*<<< orphan*/  fname ;
typedef  int /*<<< orphan*/  dir ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int FUNC0 (char const*) ; 
 int FUNC1 (struct hs20_osu_client*,char const*) ; 
 int FUNC2 (struct hs20_osu_client*,char const*) ; 
 int FUNC3 (struct wpa_ctrl*,char*,char*,int) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int) ; 
 struct wpa_ctrl* FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*) ; 
 scalar_t__ FUNC7 (char const*,scalar_t__) ; 
 scalar_t__ FUNC8 (char const*) ; 
 scalar_t__ FUNC9 (char const*,int,char*,char*) ; 
 scalar_t__ FUNC10 (char const*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,int) ; 
 scalar_t__ FUNC12 (char const*,int) ; 
 scalar_t__ FUNC13 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct wpa_ctrl*) ; 
 int /*<<< orphan*/  FUNC15 (struct wpa_ctrl*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC17 (struct hs20_osu_client*,char*) ; 

__attribute__((used)) static int FUNC18(struct hs20_osu_client *ctx, const char *bssid,
		       const char *ssid, const char *ssid2, const char *url,
		       unsigned int methods, int no_prod_assoc,
		       const char *osu_nai, const char *osu_nai2)
{
	int id;
	const char *ifname = ctx->ifname;
	char buf[200];
	struct wpa_ctrl *mon;
	int res;

	if (ssid2 && ssid2[0] == '\0')
		ssid2 = NULL;

	if (ctx->osu_ssid) {
		if (FUNC7(ssid, ctx->osu_ssid) == 0) {
			FUNC16(MSG_DEBUG,
				   "Enforced OSU SSID matches ANQP info");
			ssid2 = NULL;
		} else if (ssid2 && FUNC7(ssid2, ctx->osu_ssid) == 0) {
			FUNC16(MSG_DEBUG,
				   "Enforced OSU SSID matches RSN[OSEN] info");
			ssid = ssid2;
		} else {
			FUNC16(MSG_INFO, "Enforced OSU SSID did not match");
			FUNC17(ctx, "Enforced OSU SSID did not match");
			return -1;
		}
	}

	id = FUNC0(ifname);
	if (id < 0)
		return -1;
	if (FUNC10(ifname, id, "ssid", ssid) < 0)
		return -1;
	if (ssid2)
		osu_nai = osu_nai2;
	if (osu_nai && FUNC8(osu_nai) > 0) {
		char dir[255], fname[300];
		if (FUNC4(dir, sizeof(dir)) == NULL)
			return -1;
		FUNC6(fname, sizeof(fname), "%s/osu-ca.pem", dir);

		if (ssid2 && FUNC10(ifname, id, "ssid", ssid2) < 0)
			return -1;

		if (FUNC9(ifname, id, "proto", "OSEN") < 0 ||
		    FUNC9(ifname, id, "key_mgmt", "OSEN") < 0 ||
		    FUNC9(ifname, id, "pairwise", "CCMP") < 0 ||
		    FUNC9(ifname, id, "group", "GTK_NOT_USED CCMP") < 0 ||
		    FUNC9(ifname, id, "eap", "WFA-UNAUTH-TLS") < 0 ||
		    FUNC9(ifname, id, "ocsp", "2") < 0 ||
		    FUNC10(ifname, id, "identity", osu_nai) < 0 ||
		    FUNC10(ifname, id, "ca_cert", fname) < 0)
			return -1;
	} else if (ssid2) {
		FUNC16(MSG_INFO, "No OSU_NAI set for RSN[OSEN]");
		FUNC17(ctx, "No OSU_NAI set for RSN[OSEN]");
		return -1;
	} else {
		if (FUNC9(ifname, id, "key_mgmt", "NONE") < 0)
			return -1;
	}

	mon = FUNC5(ifname);
	if (mon == NULL)
		return -1;

	FUNC16(MSG_INFO, "Associate with OSU SSID");
	FUNC17(ctx, "Associate with OSU SSID");
	FUNC11(buf, sizeof(buf), "SELECT_NETWORK %d", id);
	if (FUNC13(ifname, buf) < 0)
		return -1;

	res = FUNC3(mon, "CTRL-EVENT-CONNECTED",
				buf, sizeof(buf));

	FUNC15(mon);
	FUNC14(mon);

	if (res < 0) {
		FUNC16(MSG_INFO, "Could not connect");
		FUNC17(ctx, "Could not connect to OSU network");
		FUNC16(MSG_INFO, "Remove OSU network connection");
		FUNC11(buf, sizeof(buf), "REMOVE_NETWORK %d", id);
		FUNC13(ifname, buf);
		return -1;
	}

	FUNC17(ctx, "Waiting for IP address for subscription registration");
	if (FUNC12(ifname, 15) < 0) {
		FUNC16(MSG_INFO, "Could not get IP address for WLAN - try connection anyway");
	}

	if (no_prod_assoc) {
		if (res < 0)
			return -1;
		FUNC16(MSG_INFO, "No production connection used for testing purposes");
		FUNC17(ctx, "No production connection used for testing purposes");
		return 0;
	}

	ctx->no_reconnect = 1;
	if (methods & 0x02) {
		FUNC16(MSG_DEBUG, "Calling cmd_prov from osu_connect");
		res = FUNC2(ctx, url);
	} else if (methods & 0x01) {
		FUNC16(MSG_DEBUG,
			   "Calling cmd_oma_dm_prov from osu_connect");
		res = FUNC1(ctx, url);
	}

	FUNC16(MSG_INFO, "Remove OSU network connection");
	FUNC17(ctx, "Remove OSU network connection");
	FUNC11(buf, sizeof(buf), "REMOVE_NETWORK %d", id);
	FUNC13(ifname, buf);

	if (res < 0)
		return -1;

	FUNC16(MSG_INFO, "Requesting reconnection with updated configuration");
	FUNC17(ctx, "Requesting reconnection with updated configuration");
	if (FUNC13(ctx->ifname, "INTERWORKING_SELECT auto") < 0) {
		FUNC16(MSG_INFO, "Failed to request wpa_supplicant to reconnect");
		FUNC17(ctx, "Failed to request wpa_supplicant to reconnect");
		return -1;
	}

	return 0;
}