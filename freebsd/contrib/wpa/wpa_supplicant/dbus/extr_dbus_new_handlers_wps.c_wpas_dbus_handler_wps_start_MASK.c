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
struct wps_start_params {int type; int role; int /*<<< orphan*/  bssid; int /*<<< orphan*/ * pin; int /*<<< orphan*/  p2p_dev_addr; } ;
struct wpa_supplicant {scalar_t__ ap_iface; } ;
typedef  int /*<<< orphan*/  params ;
typedef  int /*<<< orphan*/  npin ;
typedef  int /*<<< orphan*/  DBusMessageIter ;
typedef  int /*<<< orphan*/  DBusMessage ;

/* Variables and functions */
 scalar_t__ DBUS_TYPE_DICT_ENTRY ; 
 int /*<<< orphan*/  DEV_PW_DEFAULT ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct wps_start_params*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (char*,int,char*,int) ; 
 scalar_t__ FUNC10 (int,int) ; 
 scalar_t__ FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC16 (struct wpa_supplicant*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct wpa_supplicant*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,struct wps_start_params*,int /*<<< orphan*/ **) ; 
 int FUNC22 (struct wpa_supplicant*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC23 (struct wpa_supplicant*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC24 (struct wpa_supplicant*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

DBusMessage * FUNC25(DBusMessage *message,
					  struct wpa_supplicant *wpa_s)
{
	DBusMessage *reply = NULL;
	DBusMessageIter iter, dict_iter, entry_iter;
	struct wps_start_params params;
	char *key;
	char npin[9] = { '\0' };
	int ret;

	FUNC8(&params, 0, sizeof(params));
	FUNC2(message, &iter);

	FUNC5(&iter, &dict_iter);
	while (FUNC0(&dict_iter) ==
	       DBUS_TYPE_DICT_ENTRY) {
		FUNC5(&dict_iter, &entry_iter);

		FUNC1(&entry_iter, &key);
		FUNC4(&entry_iter);

		if (FUNC21(message, key,
						      &entry_iter,
						      &params, &reply))
			return reply;

		FUNC4(&dict_iter);
	}

#ifdef CONFIG_AP
	if (wpa_s->ap_iface && params.type == 1) {
		if (params.pin == NULL) {
			wpa_printf(MSG_DEBUG,
				   "dbus: WPS.Start - Pin required for registrar role");
			return wpas_dbus_error_invalid_args(
				message, "Pin required for registrar role.");
		}
		ret = wpa_supplicant_ap_wps_pin(wpa_s,
						params.bssid,
						params.pin,
						npin, sizeof(npin), 0);
	} else if (wpa_s->ap_iface) {
		ret = wpa_supplicant_ap_wps_pbc(wpa_s,
						params.bssid,
						params.p2p_dev_addr);
	} else
#endif /* CONFIG_AP */
	if (params.role == 0) {
		FUNC15(MSG_DEBUG, "dbus: WPS.Start - Role not specified");
		return FUNC18(message,
						    "Role not specified");
	} else if (params.role == 2) {
		if (params.pin == NULL) {
			FUNC15(MSG_DEBUG,
				   "dbus: WPS.Start - Pin required for registrar role");
			return FUNC18(
				message, "Pin required for registrar role.");
		}
		ret = FUNC24(wpa_s, params.bssid, params.pin,
					 NULL);
	} else if (params.type == 0) {
		FUNC15(MSG_DEBUG, "dbus: WPS.Start - Type not specified");
		return FUNC18(message,
						    "Type not specified");
	} else if (params.type == 1) {
		ret = FUNC23(wpa_s, params.bssid,
					 params.pin, 0,
					 DEV_PW_DEFAULT);
		if (ret > 0) {
			ret = FUNC9(npin, sizeof(npin), "%08d", ret);
			if (FUNC10(sizeof(npin), ret))
				return FUNC20(
					message, "invalid PIN");
		}
	} else {
		ret = FUNC22(wpa_s, params.bssid, 0, 0);
	}

	if (ret < 0) {
		FUNC15(MSG_DEBUG,
			   "dbus: WPS.Start wpas_wps_failed in role %s and key %s",
			   (params.role == 1 ? "enrollee" : "registrar"),
			   (params.type == 0 ? "" :
			    (params.type == 1 ? "pin" : "pbc")));
		return FUNC20(message,
						     "WPS start failed");
	}

	reply = FUNC6(message);
	if (!reply)
		return FUNC19(message);

	FUNC3(reply, &iter);
	if (!FUNC14(&iter, &dict_iter) ||
	    (FUNC11(npin) > 0 &&
	     !FUNC12(&dict_iter, "Pin", npin)) ||
	    !FUNC13(&iter, &dict_iter)) {
		FUNC7(reply);
		return FUNC19(message);
	}

	return reply;
}