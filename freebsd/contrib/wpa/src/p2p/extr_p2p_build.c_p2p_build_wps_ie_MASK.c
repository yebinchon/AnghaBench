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
struct wpabuf {int dummy; } ;
struct p2p_data {int /*<<< orphan*/ ** wps_vendor_ext; TYPE_1__* cfg; } ;
struct TYPE_2__ {int config_methods; int num_sec_dev_types; int /*<<< orphan*/  sec_dev_type; int /*<<< orphan*/  dev_name; int /*<<< orphan*/  pri_dev_type; int /*<<< orphan*/  serial_number; int /*<<< orphan*/  model_number; int /*<<< orphan*/  model_name; int /*<<< orphan*/  manufacturer; int /*<<< orphan*/  uuid; } ;

/* Variables and functions */
 int ATTR_CONFIG_METHODS ; 
 int /*<<< orphan*/  ATTR_DEV_NAME ; 
 int ATTR_DEV_PASSWORD_ID ; 
 int /*<<< orphan*/  ATTR_MANUFACTURER ; 
 int /*<<< orphan*/  ATTR_MODEL_NAME ; 
 int /*<<< orphan*/  ATTR_MODEL_NUMBER ; 
 int ATTR_PRIMARY_DEV_TYPE ; 
 int ATTR_RESPONSE_TYPE ; 
 int ATTR_SECONDARY_DEV_TYPE_LIST ; 
 int /*<<< orphan*/  ATTR_SERIAL_NUMBER ; 
 int ATTR_VENDOR_EXT ; 
 int ATTR_WPS_STATE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int P2P_MAX_WPS_VENDOR_EXT ; 
 int /*<<< orphan*/  WLAN_EID_VENDOR_SPECIFIC ; 
 int /*<<< orphan*/  WPS_DEV_OUI_WFA ; 
 int WPS_DEV_TYPE_LEN ; 
 int /*<<< orphan*/  WPS_RESP_ENROLLEE_INFO ; 
 int /*<<< orphan*/  WPS_STATE_NOT_CONFIGURED ; 
 scalar_t__ FUNC0 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct wpabuf*) ; 
 scalar_t__ FUNC11 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct wpabuf*) ; 
 scalar_t__ FUNC13 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC14(struct p2p_data *p2p, struct wpabuf *buf, int pw_id,
		     int all_attr)
{
	u8 *len;
	int i;

	if (FUNC10(buf) < 6)
		return -1;
	FUNC9(buf, WLAN_EID_VENDOR_SPECIFIC);
	len = FUNC4(buf, 1);
	FUNC6(buf, WPS_DEV_OUI_WFA);

	if (FUNC12(buf) < 0)
		return -1;

	if (all_attr) {
		if (FUNC10(buf) < 5)
			return -1;
		FUNC5(buf, ATTR_WPS_STATE);
		FUNC5(buf, 1);
		FUNC9(buf, WPS_STATE_NOT_CONFIGURED);
	}

	if (pw_id >= 0) {
		if (FUNC10(buf) < 6)
			return -1;
		/* Device Password ID */
		FUNC5(buf, ATTR_DEV_PASSWORD_ID);
		FUNC5(buf, 2);
		FUNC2(MSG_DEBUG, "P2P: WPS IE Device Password ID: %d",
			   pw_id);
		FUNC5(buf, pw_id);
	}

	if (all_attr) {
		if (FUNC10(buf) < 5)
			return -1;
		FUNC5(buf, ATTR_RESPONSE_TYPE);
		FUNC5(buf, 1);
		FUNC9(buf, WPS_RESP_ENROLLEE_INFO);

		if (FUNC11(buf, p2p->cfg->uuid) < 0 ||
		    FUNC0(buf, ATTR_MANUFACTURER,
				       p2p->cfg->manufacturer) < 0 ||
		    FUNC0(buf, ATTR_MODEL_NAME,
				       p2p->cfg->model_name) < 0 ||
		    FUNC0(buf, ATTR_MODEL_NUMBER,
				       p2p->cfg->model_number) < 0 ||
		    FUNC0(buf, ATTR_SERIAL_NUMBER,
				       p2p->cfg->serial_number) < 0)
			return -1;

		if (FUNC10(buf) < 4 + WPS_DEV_TYPE_LEN)
			return -1;
		FUNC5(buf, ATTR_PRIMARY_DEV_TYPE);
		FUNC5(buf, WPS_DEV_TYPE_LEN);
		FUNC8(buf, p2p->cfg->pri_dev_type, WPS_DEV_TYPE_LEN);

		if (FUNC0(buf, ATTR_DEV_NAME, p2p->cfg->dev_name)
		    < 0)
			return -1;

		if (FUNC10(buf) < 6)
			return -1;
		FUNC5(buf, ATTR_CONFIG_METHODS);
		FUNC5(buf, 2);
		FUNC5(buf, p2p->cfg->config_methods);
	}

	if (FUNC13(buf, 0, NULL, 0, 0) < 0)
		return -1;

	if (all_attr && p2p->cfg->num_sec_dev_types) {
		if (FUNC10(buf) <
		    4 + WPS_DEV_TYPE_LEN * p2p->cfg->num_sec_dev_types)
			return -1;
		FUNC5(buf, ATTR_SECONDARY_DEV_TYPE_LIST);
		FUNC5(buf, WPS_DEV_TYPE_LEN *
				p2p->cfg->num_sec_dev_types);
		FUNC8(buf, p2p->cfg->sec_dev_type,
				WPS_DEV_TYPE_LEN *
				p2p->cfg->num_sec_dev_types);
	}

	/* Add the WPS vendor extensions */
	for (i = 0; i < P2P_MAX_WPS_VENDOR_EXT; i++) {
		if (p2p->wps_vendor_ext[i] == NULL)
			break;
		if (FUNC10(buf) <
		    4 + FUNC3(p2p->wps_vendor_ext[i]))
			continue;
		FUNC5(buf, ATTR_VENDOR_EXT);
		FUNC5(buf, FUNC3(p2p->wps_vendor_ext[i]));
		FUNC7(buf, p2p->wps_vendor_ext[i]);
	}

	FUNC1(buf, len);

	return 0;
}