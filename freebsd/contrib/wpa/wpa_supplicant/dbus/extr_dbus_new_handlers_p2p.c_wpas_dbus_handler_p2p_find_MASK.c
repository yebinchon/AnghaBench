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
struct wpa_dbus_dict_entry {scalar_t__ type; unsigned int uint32_value; scalar_t__ array_type; unsigned int array_len; int /*<<< orphan*/ * key; int /*<<< orphan*/ * str_value; int /*<<< orphan*/ * binarray_value; } ;
typedef  enum p2p_discovery_type { ____Placeholder_p2p_discovery_type } p2p_discovery_type ;
struct TYPE_2__ {struct wpa_supplicant* p2p_init_wpa_s; } ;
typedef  int /*<<< orphan*/  DBusMessageIter ;
typedef  int /*<<< orphan*/  DBusMessage ;

/* Variables and functions */
 scalar_t__ DBUS_TYPE_ARRAY ; 
 scalar_t__ DBUS_TYPE_INT32 ; 
 scalar_t__ DBUS_TYPE_STRING ; 
 scalar_t__ DBUS_TYPE_UINT32 ; 
 int P2P_FIND_ONLY_SOCIAL ; 
 int P2P_FIND_PROGRESSIVE ; 
 int P2P_FIND_START_WITH_FULL ; 
 scalar_t__ WPAS_DBUS_TYPE_BINARRAY ; 
 unsigned int WPS_DEV_TYPE_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_dbus_dict_entry*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct wpa_dbus_dict_entry*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC13 (struct wpa_supplicant*,unsigned int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 

DBusMessage * FUNC14(DBusMessage *message,
					 struct wpa_supplicant *wpa_s)
{
	struct wpa_dbus_dict_entry entry;
	DBusMessage *reply = NULL;
	DBusMessageIter iter;
	DBusMessageIter iter_dict;
	unsigned int timeout = 0;
	enum p2p_discovery_type type = P2P_FIND_START_WITH_FULL;
	int num_req_dev_types = 0;
	unsigned int i;
	u8 *req_dev_types = NULL;
	unsigned int freq = 0;

	FUNC0(message, &iter);
	entry.key = NULL;

	if (!FUNC8(&iter, &iter_dict, NULL))
		goto error;

	while (FUNC7(&iter_dict)) {
		if (!FUNC6(&iter_dict, &entry))
			goto error;

		if (FUNC4(entry.key, "Timeout") == 0 &&
		    entry.type == DBUS_TYPE_INT32) {
			timeout = entry.uint32_value;
		} else if (FUNC4(entry.key, "RequestedDeviceTypes") == 0) {
			if (entry.type != DBUS_TYPE_ARRAY ||
			    entry.array_type != WPAS_DBUS_TYPE_BINARRAY)
				goto error_clear;

			FUNC1(req_dev_types);
			req_dev_types =
				FUNC2(WPS_DEV_TYPE_LEN * entry.array_len);
			if (!req_dev_types)
				goto error_clear;

			for (i = 0; i < entry.array_len; i++) {
				if (FUNC10(entry.binarray_value[i]) !=
				    WPS_DEV_TYPE_LEN)
					goto error_clear;
				FUNC3(req_dev_types + i * WPS_DEV_TYPE_LEN,
					  FUNC9(entry.binarray_value[i]),
					  WPS_DEV_TYPE_LEN);
			}
			num_req_dev_types = entry.array_len;
		} else if (FUNC4(entry.key, "DiscoveryType") == 0 &&
			   entry.type == DBUS_TYPE_STRING) {
			if (FUNC4(entry.str_value, "start_with_full") == 0)
				type = P2P_FIND_START_WITH_FULL;
			else if (FUNC4(entry.str_value, "social") == 0)
				type = P2P_FIND_ONLY_SOCIAL;
			else if (FUNC4(entry.str_value, "progressive") == 0)
				type = P2P_FIND_PROGRESSIVE;
			else
				goto error_clear;
		} else if (FUNC4(entry.key, "freq") == 0 &&
			   (entry.type == DBUS_TYPE_INT32 ||
			    entry.type == DBUS_TYPE_UINT32)) {
			freq = entry.uint32_value;
		} else
			goto error_clear;
		FUNC5(&entry);
	}

	wpa_s = wpa_s->global->p2p_init_wpa_s;

	if (FUNC13(wpa_s, timeout, type, num_req_dev_types,
			  req_dev_types, NULL, 0, 0, NULL, freq))
		reply = FUNC12(
			message, "Could not start P2P find");

	FUNC1(req_dev_types);
	return reply;

error_clear:
	FUNC5(&entry);
error:
	FUNC1(req_dev_types);
	reply = FUNC11(message, entry.key);
	return reply;
}