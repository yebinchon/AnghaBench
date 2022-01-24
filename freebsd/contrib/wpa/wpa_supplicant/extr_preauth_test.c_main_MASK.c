#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wpa_s ;
typedef  int /*<<< orphan*/  u8 ;
struct wpa_supplicant {int /*<<< orphan*/  wpa; scalar_t__ auth_timed_out; TYPE_2__* conf; int /*<<< orphan*/ * ctrl_iface; } ;
struct preauth_test_data {int /*<<< orphan*/  wpa; scalar_t__ auth_timed_out; TYPE_2__* conf; int /*<<< orphan*/ * ctrl_iface; } ;
typedef  int /*<<< orphan*/  preauth_test ;
struct TYPE_4__ {char* ctrl_interface; TYPE_1__* ssid; } ;
struct TYPE_3__ {int /*<<< orphan*/  eap; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  eapol_test_poll ; 
 int /*<<< orphan*/  eapol_test_terminate ; 
 int /*<<< orphan*/  eapol_test_timeout ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int /*<<< orphan*/ ,struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct wpa_supplicant*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 () ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct wpa_supplicant*) ; 
 TYPE_2__* FUNC16 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ wpa_debug_level ; 
 int wpa_debug_show_keys ; 
 int /*<<< orphan*/  FUNC17 (struct wpa_supplicant*,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC19 (struct wpa_supplicant*) ; 
 scalar_t__ FUNC20 (struct wpa_supplicant*,TYPE_1__*) ; 

int FUNC21(int argc, char *argv[])
{
	struct wpa_supplicant wpa_s;
	int ret = 1;
	u8 bssid[ETH_ALEN];
	struct preauth_test_data preauth_test;

	if (FUNC11())
		return -1;

	FUNC9(&preauth_test, 0, sizeof(preauth_test));

	wpa_debug_level = 0;
	wpa_debug_show_keys = 1;

	if (argc != 4) {
		FUNC13("usage: preauth_test <conf> <target MAC address> "
		       "<ifname>\n");
		return -1;
	}

	if (FUNC8(argv[2], bssid)) {
		FUNC13("Failed to parse target address '%s'.\n", argv[2]);
		return -1;
	}

	if (FUNC1()) {
		FUNC18(MSG_ERROR, "Failed to register EAP methods");
		return -1;
	}

	if (FUNC3()) {
		FUNC18(MSG_ERROR, "Failed to initialize event loop");
		return -1;
	}

	FUNC9(&wpa_s, 0, sizeof(wpa_s));
	wpa_s.conf = FUNC16(argv[1], NULL);
	if (wpa_s.conf == NULL) {
		FUNC13("Failed to parse configuration file '%s'.\n", argv[1]);
		return -1;
	}
	if (wpa_s.conf->ssid == NULL) {
		FUNC13("No networks defined.\n");
		return -1;
	}

	FUNC17(&wpa_s, argv[3]);
	wpa_s.ctrl_iface = FUNC19(&wpa_s);
	if (wpa_s.ctrl_iface == NULL) {
		FUNC13("Failed to initialize control interface '%s'.\n"
		       "You may have another preauth_test process already "
		       "running or the file was\n"
		       "left by an unclean termination of preauth_test in "
		       "which case you will need\n"
		       "to manually remove this file before starting "
		       "preauth_test again.\n",
		       wpa_s.conf->ctrl_interface);
		return -1;
	}
	if (FUNC20(&wpa_s, wpa_s.conf->ssid))
		return -1;

	if (FUNC14(wpa_s.wpa, bssid, &wpa_s.conf->ssid->eap))
		return -1;

	FUNC6(30, 0, eapol_test_timeout, &preauth_test, NULL);
	FUNC6(0, 100000, eapol_test_poll, &wpa_s, NULL);
	FUNC5(eapol_test_terminate, &wpa_s);
	FUNC4(eapol_test_terminate, &wpa_s);
	FUNC7();

	if (preauth_test.auth_timed_out)
		ret = -2;
	else {
		ret = FUNC12(wpa_s.wpa, NULL, bssid, NULL, 0,
					      NULL, 0) ? 0 : -3;
	}

	FUNC15(&wpa_s);

	FUNC0();

	FUNC2();

	FUNC10();

	return ret;
}