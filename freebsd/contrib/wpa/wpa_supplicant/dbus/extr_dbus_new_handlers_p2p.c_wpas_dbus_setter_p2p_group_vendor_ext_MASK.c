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
typedef  int /*<<< orphan*/  vals ;
struct wpabuf {int dummy; } ;
struct wpa_supplicant {TYPE_1__* ap_iface; } ;
struct wpa_dbus_property_desc {int dummy; } ;
struct wpa_dbus_dict_entry {scalar_t__ type; scalar_t__ array_type; int array_len; struct wpabuf** binarray_value; int /*<<< orphan*/  key; } ;
struct hostapd_data {TYPE_2__* conf; } ;
typedef  int /*<<< orphan*/  dbus_bool_t ;
struct TYPE_4__ {struct wpabuf** wps_vendor_ext; } ;
struct TYPE_3__ {struct hostapd_data** bss; } ;
typedef  int /*<<< orphan*/  DBusMessageIter ;
typedef  int /*<<< orphan*/  DBusError ;

/* Variables and functions */
 int /*<<< orphan*/  DBUS_ERROR_INVALID_ARGS ; 
 scalar_t__ DBUS_TYPE_ARRAY ; 
 scalar_t__ DBUS_TYPE_BYTE ; 
 scalar_t__ DBUS_TYPE_DICT_ENTRY ; 
 scalar_t__ DBUS_TYPE_STRING ; 
 int /*<<< orphan*/  FALSE ; 
 int MAX_WPS_VENDOR_EXTENSIONS ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ WPAS_DBUS_TYPE_BINARRAY ; 
 scalar_t__ WPAS_P2P_ROLE_GO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char**,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct hostapd_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf**,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct wpa_dbus_dict_entry*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct wpa_dbus_dict_entry*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC15 (char*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct wpabuf*) ; 
 scalar_t__ FUNC17 (struct wpa_supplicant*) ; 

dbus_bool_t FUNC18(
	const struct wpa_dbus_property_desc *property_desc,
	DBusMessageIter *iter, DBusError *error, void *user_data)
{
	struct wpa_supplicant *wpa_s = user_data;
	DBusMessageIter variant_iter, iter_dict, array_iter, sub;
	struct wpa_dbus_dict_entry entry = { .type = DBUS_TYPE_STRING };
	unsigned int i;
	struct hostapd_data *hapd = NULL;

	if (FUNC17(wpa_s) == WPAS_P2P_ROLE_GO &&
	    wpa_s->ap_iface != NULL)
		hapd = wpa_s->ap_iface->bss[0];
	else
		return FALSE;

	FUNC4(iter, &variant_iter);
	if (FUNC0(&variant_iter) != DBUS_TYPE_ARRAY)
		return FALSE;

	/*
	 * This is supposed to be array of bytearrays (aay), but the earlier
	 * implementation used a dict with "WPSVendorExtensions" as the key in
	 * this setter function which does not match the format used by the
	 * getter function. For backwards compatibility, allow both formats to
	 * be used in the setter.
	 */
	if (FUNC1(&variant_iter) ==
	    DBUS_TYPE_ARRAY) {
		/* This is the proper format matching the getter */
		struct wpabuf *vals[MAX_WPS_VENDOR_EXTENSIONS];

		FUNC4(&variant_iter, &array_iter);

		if (FUNC0(&array_iter) !=
		    DBUS_TYPE_ARRAY ||
		    FUNC1(&array_iter) !=
		    DBUS_TYPE_BYTE) {
			FUNC14(MSG_DEBUG,
				   "dbus: Not an array of array of bytes");
			return FALSE;
		}

		i = 0;
		FUNC7(vals, 0, sizeof(vals));

		while (FUNC0(&array_iter) ==
		       DBUS_TYPE_ARRAY) {
			char *val;
			int len;

			if (i == MAX_WPS_VENDOR_EXTENSIONS) {
				FUNC14(MSG_DEBUG,
					   "dbus: Too many WPSVendorExtensions values");
				i = MAX_WPS_VENDOR_EXTENSIONS + 1;
				break;
			}

			FUNC4(&array_iter, &sub);
			FUNC2(&sub, &val, &len);
			FUNC13(MSG_DEBUG, "dbus: WPSVendorExtentions[]",
				    val, len);
			vals[i] = FUNC15(val, len);
			if (vals[i] == NULL) {
				i = MAX_WPS_VENDOR_EXTENSIONS + 1;
				break;
			}
			i++;
			FUNC3(&array_iter);
		}

		if (i > MAX_WPS_VENDOR_EXTENSIONS) {
			for (i = 0; i < MAX_WPS_VENDOR_EXTENSIONS; i++)
				FUNC16(vals[i]);
			return FALSE;
		}

		for (i = 0; i < MAX_WPS_VENDOR_EXTENSIONS; i++) {
			FUNC16(hapd->conf->wps_vendor_ext[i]);
			hapd->conf->wps_vendor_ext[i] = vals[i];
		}

		FUNC6(hapd);

		return TRUE;
	}

	if (FUNC1(&variant_iter) !=
	    DBUS_TYPE_DICT_ENTRY)
		return FALSE;

	FUNC14(MSG_DEBUG,
		   "dbus: Try to use backwards compatibility version of WPSVendorExtensions setter");
	if (!FUNC12(&variant_iter, &iter_dict, error))
		return FALSE;

	while (FUNC11(&iter_dict)) {
		if (!FUNC10(&iter_dict, &entry)) {
			FUNC5(error, DBUS_ERROR_INVALID_ARGS,
					     "invalid message format");
			return FALSE;
		}

		if (FUNC8(entry.key, "WPSVendorExtensions") == 0) {
			if (entry.type != DBUS_TYPE_ARRAY ||
			    entry.array_type != WPAS_DBUS_TYPE_BINARRAY ||
			    entry.array_len > MAX_WPS_VENDOR_EXTENSIONS)
				goto error;

			for (i = 0; i < MAX_WPS_VENDOR_EXTENSIONS; i++) {
				FUNC16(hapd->conf->wps_vendor_ext[i]);
				if (i < entry.array_len) {
					hapd->conf->wps_vendor_ext[i] =
						entry.binarray_value[i];
					entry.binarray_value[i] = NULL;
				} else
					hapd->conf->wps_vendor_ext[i] = NULL;
			}

			FUNC6(hapd);
		} else
			goto error;

		FUNC9(&entry);
	}

	return TRUE;

error:
	FUNC9(&entry);
	FUNC5(error, DBUS_ERROR_INVALID_ARGS,
			     "invalid message format");
	return FALSE;
}