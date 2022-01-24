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
typedef  int u8 ;
struct wpa_supplicant {int dummy; } ;
struct beacon_rep_data {int ssid_len; int report_detail; int last_indication; int /*<<< orphan*/  eids; int /*<<< orphan*/  ssid; } ;

/* Variables and functions */
 int BEACON_REPORT_DETAIL_ALL_FIELDS_AND_ELEMENTS ; 
 int BEACON_REPORT_DETAIL_REQUESTED_ONLY ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int SSID_MAX_LEN ; 
#define  WLAN_BEACON_REQUEST_SUBELEM_AP_CHANNEL 133 
#define  WLAN_BEACON_REQUEST_SUBELEM_DETAIL 132 
#define  WLAN_BEACON_REQUEST_SUBELEM_INFO 131 
#define  WLAN_BEACON_REQUEST_SUBELEM_LAST_INDICATION 130 
#define  WLAN_BEACON_REQUEST_SUBELEM_REQUEST 129 
#define  WLAN_BEACON_REQUEST_SUBELEM_SSID 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC4(struct wpa_supplicant *wpa_s,
					     struct beacon_rep_data *data,
					     u8 sid, u8 slen, const u8 *subelem)
{
	u8 report_info, i;

	switch (sid) {
	case WLAN_BEACON_REQUEST_SUBELEM_SSID:
		if (!slen) {
			FUNC3(MSG_DEBUG,
				   "SSID subelement with zero length - wildcard SSID");
			break;
		}

		if (slen > SSID_MAX_LEN) {
			FUNC3(MSG_DEBUG,
				   "Invalid SSID subelement length: %u", slen);
			return -1;
		}

		data->ssid_len = slen;
		FUNC2(data->ssid, subelem, data->ssid_len);
		break;
	case WLAN_BEACON_REQUEST_SUBELEM_INFO:
		if (slen != 2) {
			FUNC3(MSG_DEBUG,
				   "Invalid reporting information subelement length: %u",
				   slen);
			return -1;
		}

		report_info = subelem[0];
		if (report_info != 0) {
			FUNC3(MSG_DEBUG,
				   "reporting information=%u is not supported",
				   report_info);
			return 0;
		}
		break;
	case WLAN_BEACON_REQUEST_SUBELEM_DETAIL:
		if (slen != 1) {
			FUNC3(MSG_DEBUG,
				   "Invalid reporting detail subelement length: %u",
				   slen);
			return -1;
		}

		data->report_detail = subelem[0];
		if (data->report_detail >
		    BEACON_REPORT_DETAIL_ALL_FIELDS_AND_ELEMENTS) {
			FUNC3(MSG_DEBUG, "Invalid reporting detail: %u",
				   subelem[0]);
			return -1;
		}

		break;
	case WLAN_BEACON_REQUEST_SUBELEM_REQUEST:
		if (data->report_detail !=
		    BEACON_REPORT_DETAIL_REQUESTED_ONLY) {
			FUNC3(MSG_DEBUG,
				   "Beacon request: request subelement is present but report detail is %u",
				   data->report_detail);
			return -1;
		}

		if (!slen) {
			FUNC3(MSG_DEBUG,
				   "Invalid request subelement length: %u",
				   slen);
			return -1;
		}

		if (data->eids) {
			FUNC3(MSG_DEBUG,
				   "Beacon Request: Request subelement appears more than once");
			return -1;
		}

		data->eids = FUNC0(255);
		if (!data->eids) {
			FUNC3(MSG_DEBUG, "Failed to allocate EIDs bitmap");
			return -1;
		}

		for (i = 0; i < slen; i++)
			FUNC1(data->eids, subelem[i]);
		break;
	case WLAN_BEACON_REQUEST_SUBELEM_AP_CHANNEL:
		/* Skip - it will be processed when freqs are added */
		break;
	case WLAN_BEACON_REQUEST_SUBELEM_LAST_INDICATION:
		if (slen != 1) {
			FUNC3(MSG_DEBUG,
				   "Beacon request: Invalid last indication request subelement length: %u",
				   slen);
			return -1;
		}

		data->last_indication = subelem[0];
		break;
	default:
		FUNC3(MSG_DEBUG,
			   "Beacon request: Unknown subelement id %u", sid);
		break;
	}

	return 1;
}