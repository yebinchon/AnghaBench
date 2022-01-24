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
struct p2p_message {int /*<<< orphan*/  pref_freq_list_len; int /*<<< orphan*/  pref_freq_list; void* wfd_subelems; void* p2p_attributes; void* wps_attributes; scalar_t__ ssid; scalar_t__ ds_params; } ;
struct ieee802_11_elems {int /*<<< orphan*/  pref_freq_list_len; int /*<<< orphan*/  pref_freq_list; scalar_t__ wfd; scalar_t__ ssid; scalar_t__ ds_params; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/  P2P_IE_VENDOR_TYPE ; 
 int /*<<< orphan*/  WFD_IE_VENDOR_TYPE ; 
 int /*<<< orphan*/  WPS_DEV_OUI_WFA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,size_t,struct ieee802_11_elems*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct p2p_message*) ; 
 scalar_t__ FUNC3 (void*,struct p2p_message*) ; 
 scalar_t__ FUNC4 (void*,struct p2p_message*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

int FUNC7(const u8 *data, size_t len, struct p2p_message *msg)
{
	struct ieee802_11_elems elems;

	FUNC0(data, len, &elems, 0);
	if (elems.ds_params)
		msg->ds_params = elems.ds_params;
	if (elems.ssid)
		msg->ssid = elems.ssid - 2;

	msg->wps_attributes = FUNC1(data, len,
							  WPS_DEV_OUI_WFA);
	if (msg->wps_attributes &&
	    FUNC4(msg->wps_attributes, msg)) {
		FUNC2(msg);
		return -1;
	}

	msg->p2p_attributes = FUNC1(data, len,
							  P2P_IE_VENDOR_TYPE);
	if (msg->p2p_attributes &&
	    FUNC3(msg->p2p_attributes, msg)) {
		FUNC6(MSG_DEBUG, "P2P: Failed to parse P2P IE data");
		if (msg->p2p_attributes)
			FUNC5(MSG_MSGDUMP, "P2P: P2P IE data",
					msg->p2p_attributes);
		FUNC2(msg);
		return -1;
	}

#ifdef CONFIG_WIFI_DISPLAY
	if (elems.wfd) {
		msg->wfd_subelems = ieee802_11_vendor_ie_concat(
			data, len, WFD_IE_VENDOR_TYPE);
	}
#endif /* CONFIG_WIFI_DISPLAY */

	msg->pref_freq_list = elems.pref_freq_list;
	msg->pref_freq_list_len = elems.pref_freq_list_len;

	return 0;
}