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
struct wpa_supplicant {TYPE_2__* conf; TYPE_1__* global; } ;
struct wpa_dbus_property_desc {int dummy; } ;
struct wpa_dbus_dict_entry {scalar_t__ type; scalar_t__ array_type; scalar_t__ array_len; int uint32_value; int /*<<< orphan*/  key; int /*<<< orphan*/  bool_value; int /*<<< orphan*/  bytearray_value; int /*<<< orphan*/  str_value; int /*<<< orphan*/ ** binarray_value; } ;
typedef  int /*<<< orphan*/  dbus_bool_t ;
struct TYPE_4__ {char* device_name; int changed_parameters; unsigned int num_sec_device_types; int p2p_go_intent; int p2p_listen_reg_class; int p2p_listen_channel; int p2p_oper_reg_class; int p2p_oper_channel; char* p2p_ssid_postfix; int p2p_group_idle; int disassoc_low_ack; int p2p_search_delay; int /*<<< orphan*/  p2p_no_group_iface; int /*<<< orphan*/  ip_addr_end; int /*<<< orphan*/  ip_addr_start; int /*<<< orphan*/  ip_addr_mask; int /*<<< orphan*/  ip_addr_go; int /*<<< orphan*/  p2p_intra_bss; int /*<<< orphan*/  persistent_reconnect; int /*<<< orphan*/ ** wps_vendor_ext; int /*<<< orphan*/ * sec_device_type; int /*<<< orphan*/  device_type; } ;
struct TYPE_3__ {struct wpa_supplicant* p2p_init_wpa_s; } ;
typedef  int /*<<< orphan*/  DBusMessageIter ;
typedef  int /*<<< orphan*/  DBusError ;

/* Variables and functions */
 int CFG_CHANGED_DEVICE_NAME ; 
 int CFG_CHANGED_DEVICE_TYPE ; 
 int CFG_CHANGED_P2P_INTRA_BSS ; 
 int CFG_CHANGED_P2P_LISTEN_CHANNEL ; 
 int CFG_CHANGED_P2P_OPER_CHANNEL ; 
 int CFG_CHANGED_P2P_SSID_POSTFIX ; 
 int CFG_CHANGED_SEC_DEVICE_TYPE ; 
 int CFG_CHANGED_VENDOR_EXTENSION ; 
 int /*<<< orphan*/  DBUS_ERROR_INVALID_ARGS ; 
 int /*<<< orphan*/  DBUS_ERROR_NO_MEMORY ; 
 scalar_t__ DBUS_TYPE_ARRAY ; 
 scalar_t__ DBUS_TYPE_BOOLEAN ; 
 scalar_t__ DBUS_TYPE_BYTE ; 
 scalar_t__ DBUS_TYPE_STRING ; 
 scalar_t__ DBUS_TYPE_UINT32 ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ MAX_SEC_DEVICE_TYPES ; 
 unsigned int P2P_MAX_WPS_VENDOR_EXT ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ WPAS_DBUS_TYPE_BINARRAY ; 
 scalar_t__ WPS_DEV_NAME_MAX_LEN ; 
 scalar_t__ WPS_DEV_TYPE_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wpa_dbus_dict_entry*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct wpa_dbus_dict_entry*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct wpa_supplicant*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct wpa_dbus_dict_entry) ; 

dbus_bool_t FUNC17(
	const struct wpa_dbus_property_desc *property_desc,
	DBusMessageIter *iter, DBusError *error, void *user_data)
{
	struct wpa_supplicant *wpa_s = user_data;
	DBusMessageIter variant_iter, iter_dict;
	struct wpa_dbus_dict_entry entry = {.type = DBUS_TYPE_STRING };
	unsigned int i;

	if (!FUNC11(wpa_s, NULL, NULL, error))
		return FALSE;

	wpa_s = wpa_s->global->p2p_init_wpa_s;

	FUNC0(iter, &variant_iter);
	if (!FUNC10(&variant_iter, &iter_dict, error))
		return FALSE;

	while (FUNC9(&iter_dict)) {
		if (!FUNC8(&iter_dict, &entry)) {
			FUNC1(error, DBUS_ERROR_INVALID_ARGS,
					     "invalid message format");
			return FALSE;
		}

		if (FUNC4(entry.key, "DeviceName") == 0) {
			char *devname;

			if (entry.type != DBUS_TYPE_STRING ||
			    FUNC6(entry.str_value) > WPS_DEV_NAME_MAX_LEN)
				goto error;

			devname = FUNC5(entry.str_value);
			if (devname == NULL)
				goto err_no_mem_clear;

			FUNC2(wpa_s->conf->device_name);
			wpa_s->conf->device_name = devname;

			wpa_s->conf->changed_parameters |=
				CFG_CHANGED_DEVICE_NAME;
		} else if (FUNC4(entry.key, "PrimaryDeviceType") == 0) {
			if (entry.type != DBUS_TYPE_ARRAY ||
			    entry.array_type != DBUS_TYPE_BYTE ||
			    entry.array_len != WPS_DEV_TYPE_LEN)
				goto error;

			FUNC3(wpa_s->conf->device_type,
				  entry.bytearray_value,
				  WPS_DEV_TYPE_LEN);
			wpa_s->conf->changed_parameters |=
				CFG_CHANGED_DEVICE_TYPE;
		} else if (FUNC4(entry.key, "SecondaryDeviceTypes") == 0) {
			if (entry.type != DBUS_TYPE_ARRAY ||
			    entry.array_type != WPAS_DBUS_TYPE_BINARRAY ||
			    entry.array_len > MAX_SEC_DEVICE_TYPES)
				goto error;

			for (i = 0; i < entry.array_len; i++)
				if (FUNC15(entry.binarray_value[i]) !=
				    WPS_DEV_TYPE_LEN)
					goto err_no_mem_clear;
			for (i = 0; i < entry.array_len; i++)
				FUNC3(wpa_s->conf->sec_device_type[i],
					  FUNC14(entry.binarray_value[i]),
					  WPS_DEV_TYPE_LEN);
			wpa_s->conf->num_sec_device_types = entry.array_len;
			wpa_s->conf->changed_parameters |=
					CFG_CHANGED_SEC_DEVICE_TYPE;
		} else if (FUNC4(entry.key, "VendorExtension") == 0) {
			if (entry.type != DBUS_TYPE_ARRAY ||
			    entry.array_type != WPAS_DBUS_TYPE_BINARRAY ||
			    (entry.array_len > P2P_MAX_WPS_VENDOR_EXT))
				goto error;

			wpa_s->conf->changed_parameters |=
				CFG_CHANGED_VENDOR_EXTENSION;

			for (i = 0; i < P2P_MAX_WPS_VENDOR_EXT; i++) {
				FUNC13(wpa_s->conf->wps_vendor_ext[i]);
				if (i < entry.array_len) {
					wpa_s->conf->wps_vendor_ext[i] =
						entry.binarray_value[i];
					entry.binarray_value[i] = NULL;
				} else
					wpa_s->conf->wps_vendor_ext[i] = NULL;
			}
		} else if (FUNC4(entry.key, "GOIntent") == 0 &&
			   entry.type == DBUS_TYPE_UINT32 &&
			   (entry.uint32_value <= 15))
			wpa_s->conf->p2p_go_intent = entry.uint32_value;
		else if (FUNC4(entry.key, "PersistentReconnect") == 0 &&
			 entry.type == DBUS_TYPE_BOOLEAN)
			wpa_s->conf->persistent_reconnect = entry.bool_value;
		else if (FUNC4(entry.key, "ListenRegClass") == 0 &&
			 entry.type == DBUS_TYPE_UINT32) {
			wpa_s->conf->p2p_listen_reg_class = entry.uint32_value;
			wpa_s->conf->changed_parameters |=
				CFG_CHANGED_P2P_LISTEN_CHANNEL;
		} else if (FUNC4(entry.key, "ListenChannel") == 0 &&
			   entry.type == DBUS_TYPE_UINT32) {
			wpa_s->conf->p2p_listen_channel = entry.uint32_value;
			wpa_s->conf->changed_parameters |=
				CFG_CHANGED_P2P_LISTEN_CHANNEL;
		} else if (FUNC4(entry.key, "OperRegClass") == 0 &&
			   entry.type == DBUS_TYPE_UINT32) {
			wpa_s->conf->p2p_oper_reg_class = entry.uint32_value;
			wpa_s->conf->changed_parameters |=
				CFG_CHANGED_P2P_OPER_CHANNEL;
		} else if (FUNC4(entry.key, "OperChannel") == 0 &&
			   entry.type == DBUS_TYPE_UINT32) {
			wpa_s->conf->p2p_oper_channel = entry.uint32_value;
			wpa_s->conf->changed_parameters |=
				CFG_CHANGED_P2P_OPER_CHANNEL;
		} else if (FUNC4(entry.key, "SsidPostfix") == 0) {
			char *postfix;

			if (entry.type != DBUS_TYPE_STRING)
				goto error;

			postfix = FUNC5(entry.str_value);
			if (!postfix)
				goto err_no_mem_clear;

			FUNC2(wpa_s->conf->p2p_ssid_postfix);
			wpa_s->conf->p2p_ssid_postfix = postfix;

			wpa_s->conf->changed_parameters |=
					CFG_CHANGED_P2P_SSID_POSTFIX;
		} else if (FUNC4(entry.key, "IntraBss") == 0 &&
			   entry.type == DBUS_TYPE_BOOLEAN) {
			wpa_s->conf->p2p_intra_bss = entry.bool_value;
			wpa_s->conf->changed_parameters |=
				CFG_CHANGED_P2P_INTRA_BSS;
		} else if (FUNC4(entry.key, "IpAddrGo") == 0) {
			if (!FUNC16(entry))
				goto error;
			FUNC3(wpa_s->conf->ip_addr_go,
				  entry.bytearray_value, 4);
		} else if (FUNC4(entry.key, "IpAddrMask") == 0) {
			if (!FUNC16(entry))
				goto error;
			FUNC3(wpa_s->conf->ip_addr_mask,
				  entry.bytearray_value, 4);
		} else if (FUNC4(entry.key, "IpAddrStart") == 0) {
			if (!FUNC16(entry))
				goto error;
			FUNC3(wpa_s->conf->ip_addr_start,
				  entry.bytearray_value, 4);
		} else if (FUNC4(entry.key, "IpAddrEnd") == 0) {
			if (!FUNC16(entry))
				goto error;
			FUNC3(wpa_s->conf->ip_addr_end,
				  entry.bytearray_value, 4);
		} else if (FUNC4(entry.key, "GroupIdle") == 0 &&
			   entry.type == DBUS_TYPE_UINT32)
			wpa_s->conf->p2p_group_idle = entry.uint32_value;
		else if (FUNC4(entry.key, "disassoc_low_ack") == 0 &&
			 entry.type == DBUS_TYPE_UINT32)
			wpa_s->conf->disassoc_low_ack = entry.uint32_value;
		else if (FUNC4(entry.key, "NoGroupIface") == 0 &&
			 entry.type == DBUS_TYPE_BOOLEAN)
			wpa_s->conf->p2p_no_group_iface = entry.bool_value;
		else if (FUNC4(entry.key, "p2p_search_delay") == 0 &&
			 entry.type == DBUS_TYPE_UINT32)
			wpa_s->conf->p2p_search_delay = entry.uint32_value;
		else
			goto error;

		FUNC7(&entry);
	}

	if (wpa_s->conf->changed_parameters) {
		/* Some changed parameters requires to update config*/
		FUNC12(wpa_s);
	}

	return TRUE;

 error:
	FUNC1(error, DBUS_ERROR_INVALID_ARGS,
			     "invalid message format");
	FUNC7(&entry);
	return FALSE;

 err_no_mem_clear:
	FUNC1(error, DBUS_ERROR_NO_MEMORY, "no memory");
	FUNC7(&entry);
	return FALSE;
}