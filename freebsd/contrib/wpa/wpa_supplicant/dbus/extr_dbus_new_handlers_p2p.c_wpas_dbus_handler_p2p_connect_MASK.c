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
typedef  int /*<<< orphan*/  u8 ;
struct wpa_supplicant {TYPE_1__* global; } ;
struct wpa_dbus_dict_entry {scalar_t__ type; int bool_value; int int32_value; int /*<<< orphan*/  str_value; int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  npin ;
typedef  enum p2p_wps_method { ____Placeholder_p2p_wps_method } p2p_wps_method ;
struct TYPE_2__ {struct wpa_supplicant* p2p_init_wpa_s; int /*<<< orphan*/  p2p; } ;
typedef  int /*<<< orphan*/  DBusMessageIter ;
typedef  int /*<<< orphan*/  DBusMessage ;

/* Variables and functions */
 scalar_t__ DBUS_TYPE_BOOLEAN ; 
 scalar_t__ DBUS_TYPE_INT32 ; 
 int /*<<< orphan*/  DBUS_TYPE_INVALID ; 
 scalar_t__ DBUS_TYPE_OBJECT_PATH ; 
 scalar_t__ DBUS_TYPE_STRING ; 
 int ETH_ALEN ; 
 char* WPAS_DBUS_ERROR_CONNECT_CHANNEL_UNAVAILABLE ; 
 char* WPAS_DBUS_ERROR_CONNECT_CHANNEL_UNSUPPORTED ; 
 char* WPAS_DBUS_ERROR_CONNECT_UNSPECIFIED_ERROR ; 
 int WPS_NOT_READY ; 
 int WPS_PBC ; 
 int WPS_PIN_DISPLAY ; 
 int WPS_PIN_KEYPAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char*,int,char*,int) ; 
 scalar_t__ FUNC6 (int,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct wpa_dbus_dict_entry*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct wpa_dbus_dict_entry*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct wpa_supplicant*,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *,char*) ; 
 int FUNC18 (struct wpa_supplicant*,int /*<<< orphan*/ *,char*,int,int,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

DBusMessage * FUNC19(DBusMessage *message,
					    struct wpa_supplicant *wpa_s)
{
	DBusMessageIter iter_dict;
	DBusMessage *reply = NULL;
	DBusMessageIter iter;
	struct wpa_dbus_dict_entry entry;
	char *peer_object_path = NULL;
	int persistent_group = 0;
	int join = 0;
	int authorize_only = 0;
	int go_intent = -1;
	int freq = 0;
	u8 addr[ETH_ALEN];
	char *pin = NULL;
	enum p2p_wps_method wps_method = WPS_NOT_READY;
	int new_pin;
	char *err_msg = NULL;
	char *iface = NULL;
	int ret;

	if (!FUNC15(wpa_s, message, &reply, NULL))
		return reply;

	FUNC1(message, &iter);

	if (!FUNC14(&iter, &iter_dict, NULL))
		goto inv_args;

	while (FUNC13(&iter_dict)) {
		if (!FUNC12(&iter_dict, &entry))
			goto inv_args;

		if (FUNC7(entry.key, "peer") == 0 &&
		    entry.type == DBUS_TYPE_OBJECT_PATH) {
			peer_object_path = FUNC8(entry.str_value);
		} else if (FUNC7(entry.key, "persistent") == 0 &&
			   entry.type == DBUS_TYPE_BOOLEAN) {
			persistent_group = entry.bool_value;
		} else if (FUNC7(entry.key, "join") == 0 &&
			   entry.type == DBUS_TYPE_BOOLEAN) {
			join = entry.bool_value;
		} else if (FUNC7(entry.key, "authorize_only") == 0 &&
			   entry.type == DBUS_TYPE_BOOLEAN) {
			authorize_only = entry.bool_value;
		} else if (FUNC7(entry.key, "frequency") == 0 &&
			   entry.type == DBUS_TYPE_INT32) {
			freq = entry.int32_value;
			if (freq <= 0)
				goto inv_args_clear;
		} else if (FUNC7(entry.key, "go_intent") == 0 &&
			   entry.type == DBUS_TYPE_INT32) {
			go_intent = entry.int32_value;
			if ((go_intent < 0) || (go_intent > 15))
				goto inv_args_clear;
		} else if (FUNC7(entry.key, "wps_method") == 0 &&
			   entry.type == DBUS_TYPE_STRING) {
			if (FUNC7(entry.str_value, "pbc") == 0)
				wps_method = WPS_PBC;
			else if (FUNC7(entry.str_value, "pin") == 0)
				wps_method = WPS_PIN_DISPLAY;
			else if (FUNC7(entry.str_value, "display") == 0)
				wps_method = WPS_PIN_DISPLAY;
			else if (FUNC7(entry.str_value, "keypad") == 0)
				wps_method = WPS_PIN_KEYPAD;
			else
				goto inv_args_clear;
		} else if (FUNC7(entry.key, "pin") == 0 &&
			   entry.type == DBUS_TYPE_STRING) {
			pin = FUNC8(entry.str_value);
		} else
			goto inv_args_clear;

		FUNC11(&entry);
	}

	if (wps_method == WPS_NOT_READY ||
	    FUNC10(peer_object_path, addr) < 0 ||
	    !FUNC9(wpa_s->global->p2p, addr))
		goto inv_args;

	/*
	 * Validate the wps_method specified and the pin value.
	 */
	if ((!pin || !pin[0]) && wps_method == WPS_PIN_KEYPAD)
		goto inv_args;

	wpa_s = wpa_s->global->p2p_init_wpa_s;

	new_pin = FUNC18(wpa_s, addr, pin, wps_method,
				   persistent_group, 0, join, authorize_only,
				   go_intent, freq, 0, -1, 0, 0, 0, 0, 0,
				   NULL, 0);

	if (new_pin >= 0) {
		char npin[9];
		char *generated_pin;

		ret = FUNC5(npin, sizeof(npin), "%08d", new_pin);
		if (FUNC6(sizeof(npin), ret)) {
			reply = FUNC17(message,
							      "invalid PIN");
			goto out;
		}
		generated_pin = npin;
		reply = FUNC3(message);
		FUNC0(reply, DBUS_TYPE_STRING,
					 &generated_pin, DBUS_TYPE_INVALID);
	} else {
		switch (new_pin) {
		case -2:
			err_msg =
				"connect failed due to channel unavailability.";
			iface = WPAS_DBUS_ERROR_CONNECT_CHANNEL_UNAVAILABLE;
			break;

		case -3:
			err_msg = "connect failed due to unsupported channel.";
			iface = WPAS_DBUS_ERROR_CONNECT_CHANNEL_UNSUPPORTED;
			break;

		default:
			err_msg = "connect failed due to unspecified error.";
			iface = WPAS_DBUS_ERROR_CONNECT_UNSPECIFIED_ERROR;
			break;
		}

		/*
		 * TODO:
		 * Do we need specialized errors corresponding to above
		 * error conditions as against just returning a different
		 * error message?
		 */
		reply = FUNC2(message, iface, err_msg);
	}

out:
	FUNC4(peer_object_path);
	FUNC4(pin);
	return reply;
inv_args_clear:
	FUNC11(&entry);
inv_args:
	reply = FUNC16(message, NULL);
	goto out;
}