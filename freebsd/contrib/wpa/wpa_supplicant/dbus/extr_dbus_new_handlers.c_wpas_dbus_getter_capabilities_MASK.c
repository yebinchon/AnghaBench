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
struct wpa_supplicant {TYPE_1__* conf; } ;
struct wpa_driver_capa {int enc; int key_mgmt; int auth; int flags; int /*<<< orphan*/  max_scan_ssids; } ;
struct wpa_dbus_property_desc {int dummy; } ;
typedef  int /*<<< orphan*/  dbus_int32_t ;
typedef  int /*<<< orphan*/  dbus_bool_t ;
struct TYPE_2__ {int /*<<< orphan*/  p2p_disabled; } ;
typedef  int /*<<< orphan*/  DBusMessageIter ;
typedef  int /*<<< orphan*/  DBusError ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const**) ; 
 int /*<<< orphan*/  DBUS_ERROR_NO_MEMORY ; 
 int /*<<< orphan*/  DBUS_TYPE_VARIANT ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int WPA_DRIVER_AUTH_LEAP ; 
 int WPA_DRIVER_AUTH_OPEN ; 
 int WPA_DRIVER_AUTH_SHARED ; 
 int WPA_DRIVER_CAPA_ENC_BIP ; 
 int WPA_DRIVER_CAPA_ENC_BIP_CMAC_256 ; 
 int WPA_DRIVER_CAPA_ENC_BIP_GMAC_128 ; 
 int WPA_DRIVER_CAPA_ENC_BIP_GMAC_256 ; 
 int WPA_DRIVER_CAPA_ENC_CCMP ; 
 int WPA_DRIVER_CAPA_ENC_CCMP_256 ; 
 int WPA_DRIVER_CAPA_ENC_GCMP ; 
 int WPA_DRIVER_CAPA_ENC_GCMP_256 ; 
 int WPA_DRIVER_CAPA_ENC_TKIP ; 
 int WPA_DRIVER_CAPA_ENC_WEP104 ; 
 int WPA_DRIVER_CAPA_ENC_WEP40 ; 
 int WPA_DRIVER_CAPA_KEY_MGMT_FT ; 
 int WPA_DRIVER_CAPA_KEY_MGMT_FT_PSK ; 
 int WPA_DRIVER_CAPA_KEY_MGMT_WPA ; 
 int WPA_DRIVER_CAPA_KEY_MGMT_WPA2 ; 
 int WPA_DRIVER_CAPA_KEY_MGMT_WPA2_PSK ; 
 int WPA_DRIVER_CAPA_KEY_MGMT_WPA_NONE ; 
 int WPA_DRIVER_CAPA_KEY_MGMT_WPA_PSK ; 
 int WPA_DRIVER_FLAGS_AP ; 
 int WPA_DRIVER_FLAGS_IBSS ; 
 int WPA_DRIVER_FLAGS_MESH ; 
 int WPA_DRIVER_FLAGS_P2P_CAPABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char const**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int FUNC11 (struct wpa_supplicant*,struct wpa_driver_capa*) ; 

dbus_bool_t FUNC12(
	const struct wpa_dbus_property_desc *property_desc,
	DBusMessageIter *iter, DBusError *error, void *user_data)
{
	struct wpa_supplicant *wpa_s = user_data;
	struct wpa_driver_capa capa;
	int res;
	DBusMessageIter iter_dict, iter_dict_entry, iter_dict_val, iter_array,
		variant_iter;
	const char *scans[] = { "active", "passive", "ssid" };

	if (!FUNC2(iter, DBUS_TYPE_VARIANT,
					      "a{sv}", &variant_iter) ||
	    !FUNC9(&variant_iter, &iter_dict))
		goto nomem;

	res = FUNC11(wpa_s, &capa);

	/***** pairwise cipher */
	if (res < 0) {
		const char *args[] = {"ccmp", "tkip", "none"};

		if (!FUNC5(
			    &iter_dict, "Pairwise", args,
			    FUNC0(args)))
			goto nomem;
	} else {
		if (!FUNC6(&iter_dict, "Pairwise",
						      &iter_dict_entry,
						      &iter_dict_val,
						      &iter_array) ||
		    ((capa.enc & WPA_DRIVER_CAPA_ENC_CCMP_256) &&
		     !FUNC10(
			     &iter_array, "ccmp-256")) ||
		    ((capa.enc & WPA_DRIVER_CAPA_ENC_GCMP_256) &&
		     !FUNC10(
			     &iter_array, "gcmp-256")) ||
		    ((capa.enc & WPA_DRIVER_CAPA_ENC_CCMP) &&
		     !FUNC10(
			     &iter_array, "ccmp")) ||
		    ((capa.enc & WPA_DRIVER_CAPA_ENC_GCMP) &&
		     !FUNC10(
			     &iter_array, "gcmp")) ||
		    ((capa.enc & WPA_DRIVER_CAPA_ENC_TKIP) &&
		     !FUNC10(
			     &iter_array, "tkip")) ||
		    ((capa.key_mgmt & WPA_DRIVER_CAPA_KEY_MGMT_WPA_NONE) &&
		     !FUNC10(
			     &iter_array, "none")) ||
		    !FUNC8(&iter_dict,
						    &iter_dict_entry,
						    &iter_dict_val,
						    &iter_array))
			goto nomem;
	}

	/***** group cipher */
	if (res < 0) {
		const char *args[] = {
			"ccmp", "tkip", "wep104", "wep40"
		};

		if (!FUNC5(
			    &iter_dict, "Group", args,
			    FUNC0(args)))
			goto nomem;
	} else {
		if (!FUNC6(&iter_dict, "Group",
						      &iter_dict_entry,
						      &iter_dict_val,
						      &iter_array) ||
		    ((capa.enc & WPA_DRIVER_CAPA_ENC_CCMP_256) &&
		     !FUNC10(
			     &iter_array, "ccmp-256")) ||
		    ((capa.enc & WPA_DRIVER_CAPA_ENC_GCMP_256) &&
		     !FUNC10(
			     &iter_array, "gcmp-256")) ||
		    ((capa.enc & WPA_DRIVER_CAPA_ENC_CCMP) &&
		     !FUNC10(
			     &iter_array, "ccmp")) ||
		    ((capa.enc & WPA_DRIVER_CAPA_ENC_GCMP) &&
		     !FUNC10(
			     &iter_array, "gcmp")) ||
		    ((capa.enc & WPA_DRIVER_CAPA_ENC_TKIP) &&
		     !FUNC10(
			     &iter_array, "tkip")) ||
		    ((capa.enc & WPA_DRIVER_CAPA_ENC_WEP104) &&
		     !FUNC10(
			     &iter_array, "wep104")) ||
		    ((capa.enc & WPA_DRIVER_CAPA_ENC_WEP40) &&
		     !FUNC10(
			     &iter_array, "wep40")) ||
		    !FUNC8(&iter_dict,
						    &iter_dict_entry,
						    &iter_dict_val,
						    &iter_array))
			goto nomem;
	}

	if (!FUNC6(&iter_dict, "GroupMgmt",
					      &iter_dict_entry,
					      &iter_dict_val,
					      &iter_array) ||
	    (res == 0 && (capa.enc & WPA_DRIVER_CAPA_ENC_BIP) &&
	     !FUNC10(
		     &iter_array, "aes-128-cmac")) ||
	    (res == 0 && (capa.enc & WPA_DRIVER_CAPA_ENC_BIP_GMAC_128) &&
	     !FUNC10(
		     &iter_array, "bip-gmac-128")) ||
	    (res == 0 && (capa.enc & WPA_DRIVER_CAPA_ENC_BIP_GMAC_256) &&
	     !FUNC10(
		     &iter_array, "bip-gmac-256")) ||
	    (res == 0 && (capa.enc & WPA_DRIVER_CAPA_ENC_BIP_CMAC_256) &&
	     !FUNC10(
		     &iter_array, "bip-cmac-256")) ||
	    !FUNC8(&iter_dict,
					    &iter_dict_entry,
					    &iter_dict_val,
					    &iter_array))
		goto nomem;

	/***** key management */
	if (res < 0) {
		const char *args[] = {
			"wpa-psk", "wpa-eap", "ieee8021x", "wpa-none",
#ifdef CONFIG_WPS
			"wps",
#endif /* CONFIG_WPS */
			"none"
		};
		if (!FUNC5(
			    &iter_dict, "KeyMgmt", args,
			    FUNC0(args)))
			goto nomem;
	} else {
		if (!FUNC6(&iter_dict, "KeyMgmt",
						      &iter_dict_entry,
						      &iter_dict_val,
						      &iter_array) ||
		    !FUNC10(&iter_array,
							    "none") ||
		    !FUNC10(&iter_array,
							    "ieee8021x"))
			goto nomem;

		if (capa.key_mgmt & (WPA_DRIVER_CAPA_KEY_MGMT_WPA |
				     WPA_DRIVER_CAPA_KEY_MGMT_WPA2)) {
			if (!FUNC10(
				    &iter_array, "wpa-eap") ||
			    ((capa.key_mgmt & WPA_DRIVER_CAPA_KEY_MGMT_FT) &&
			     !FUNC10(
				     &iter_array, "wpa-ft-eap")))
				goto nomem;

/* TODO: Ensure that driver actually supports sha256 encryption. */
#ifdef CONFIG_IEEE80211W
			if (!wpa_dbus_dict_string_array_add_element(
				    &iter_array, "wpa-eap-sha256"))
				goto nomem;
#endif /* CONFIG_IEEE80211W */
		}

		if (capa.key_mgmt & (WPA_DRIVER_CAPA_KEY_MGMT_WPA_PSK |
				     WPA_DRIVER_CAPA_KEY_MGMT_WPA2_PSK)) {
			if (!FUNC10(
				    &iter_array, "wpa-psk") ||
			    ((capa.key_mgmt &
			      WPA_DRIVER_CAPA_KEY_MGMT_FT_PSK) &&
			     !FUNC10(
				     &iter_array, "wpa-ft-psk")))
				goto nomem;

/* TODO: Ensure that driver actually supports sha256 encryption. */
#ifdef CONFIG_IEEE80211W
			if (!wpa_dbus_dict_string_array_add_element(
				    &iter_array, "wpa-psk-sha256"))
				goto nomem;
#endif /* CONFIG_IEEE80211W */
		}

		if ((capa.key_mgmt & WPA_DRIVER_CAPA_KEY_MGMT_WPA_NONE) &&
		    !FUNC10(&iter_array,
							    "wpa-none"))
			goto nomem;


#ifdef CONFIG_WPS
		if (!wpa_dbus_dict_string_array_add_element(&iter_array,
							    "wps"))
			goto nomem;
#endif /* CONFIG_WPS */

		if (!FUNC8(&iter_dict,
						    &iter_dict_entry,
						    &iter_dict_val,
						    &iter_array))
			goto nomem;
	}

	/***** WPA protocol */
	if (res < 0) {
		const char *args[] = { "rsn", "wpa" };

		if (!FUNC5(
			    &iter_dict, "Protocol", args,
			    FUNC0(args)))
			goto nomem;
	} else {
		if (!FUNC6(&iter_dict, "Protocol",
						      &iter_dict_entry,
						      &iter_dict_val,
						      &iter_array) ||
		    ((capa.key_mgmt & (WPA_DRIVER_CAPA_KEY_MGMT_WPA2 |
				       WPA_DRIVER_CAPA_KEY_MGMT_WPA2_PSK)) &&
		     !FUNC10(
			     &iter_array, "rsn")) ||
		    ((capa.key_mgmt & (WPA_DRIVER_CAPA_KEY_MGMT_WPA |
				       WPA_DRIVER_CAPA_KEY_MGMT_WPA_PSK)) &&
		     !FUNC10(
			     &iter_array, "wpa")) ||
		    !FUNC8(&iter_dict,
						    &iter_dict_entry,
						    &iter_dict_val,
						    &iter_array))
			goto nomem;
	}

	/***** auth alg */
	if (res < 0) {
		const char *args[] = { "open", "shared", "leap" };

		if (!FUNC5(
			    &iter_dict, "AuthAlg", args,
			    FUNC0(args)))
			goto nomem;
	} else {
		if (!FUNC6(&iter_dict, "AuthAlg",
						      &iter_dict_entry,
						      &iter_dict_val,
						      &iter_array))
			goto nomem;

		if (((capa.auth & WPA_DRIVER_AUTH_OPEN) &&
		     !FUNC10(
			     &iter_array, "open")) ||
		    ((capa.auth & WPA_DRIVER_AUTH_SHARED) &&
		     !FUNC10(
			     &iter_array, "shared")) ||
		    ((capa.auth & WPA_DRIVER_AUTH_LEAP) &&
		     !FUNC10(
			     &iter_array, "leap")) ||
		    !FUNC8(&iter_dict,
						    &iter_dict_entry,
						    &iter_dict_val,
						    &iter_array))
			goto nomem;
	}

	/***** Scan */
	if (!FUNC5(&iter_dict, "Scan", scans,
					       FUNC0(scans)))
		goto nomem;

	/***** Modes */
	if (!FUNC6(&iter_dict, "Modes",
					      &iter_dict_entry,
					      &iter_dict_val,
					      &iter_array) ||
	    !FUNC10(
		    &iter_array, "infrastructure") ||
	    (res >= 0 && (capa.flags & WPA_DRIVER_FLAGS_IBSS) &&
	     !FUNC10(
		     &iter_array, "ad-hoc")) ||
	    (res >= 0 && (capa.flags & WPA_DRIVER_FLAGS_AP) &&
	     !FUNC10(
		     &iter_array, "ap")) ||
	    (res >= 0 && (capa.flags & WPA_DRIVER_FLAGS_P2P_CAPABLE) &&
	     !wpa_s->conf->p2p_disabled &&
	     !FUNC10(
		     &iter_array, "p2p")) ||
#ifdef CONFIG_MESH
	    (res >= 0 && (capa.flags & WPA_DRIVER_FLAGS_MESH) &&
	     !wpa_dbus_dict_string_array_add_element(
		     &iter_array, "mesh")) ||
#endif /* CONFIG_MESH */
	    !FUNC8(&iter_dict,
					    &iter_dict_entry,
					    &iter_dict_val,
					    &iter_array))
		goto nomem;
	/***** Modes end */

	if (res >= 0) {
		dbus_int32_t max_scan_ssid = capa.max_scan_ssids;

		if (!FUNC4(&iter_dict, "MaxScanSSID",
						max_scan_ssid))
			goto nomem;
	}

	if (!FUNC7(&variant_iter, &iter_dict) ||
	    !FUNC1(iter, &variant_iter))
		goto nomem;

	return TRUE;

nomem:
	FUNC3(error, DBUS_ERROR_NO_MEMORY, "no memory");
	return FALSE;
}