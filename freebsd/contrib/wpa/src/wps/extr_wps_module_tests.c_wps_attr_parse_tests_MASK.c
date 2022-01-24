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
struct wps_parse_attr {int /*<<< orphan*/  settings_delay_time; int /*<<< orphan*/  request_to_enroll; int /*<<< orphan*/  network_key_shareable; int /*<<< orphan*/  authorized_macs; int /*<<< orphan*/  version2; int /*<<< orphan*/  num_vendor_ext; int /*<<< orphan*/  num_req_dev_type; int /*<<< orphan*/  network_key_idx; int /*<<< orphan*/  num_cred; int /*<<< orphan*/  ap_setup_locked; int /*<<< orphan*/  network_key; } ;
struct wps_attr_parse_test {scalar_t__ result; int extra; int /*<<< orphan*/  data; } ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct wps_attr_parse_test*) ; 
 int /*<<< orphan*/  MAX_CRED_COUNT ; 
 int /*<<< orphan*/  MAX_REQ_DEV_TYPE_COUNT ; 
 int /*<<< orphan*/  MAX_WPS_PARSE_VENDOR_EXT ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 struct wpabuf* FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*,size_t) ; 
 struct wps_attr_parse_test* wps_attr_parse_test_cases ; 
 scalar_t__ FUNC7 (struct wpabuf*,struct wps_parse_attr*) ; 

__attribute__((used)) static int FUNC8(void)
{
	struct wps_parse_attr attr;
	unsigned int i;
	int ret = 0;

	FUNC3(MSG_INFO, "WPS attribute parsing tests");

	for (i = 0; i < FUNC0(wps_attr_parse_test_cases); i++) {
		struct wpabuf *buf;
		size_t len;
		const struct wps_attr_parse_test *test =
			&wps_attr_parse_test_cases[i];

		len = FUNC2(test->data) / 2;
		buf = FUNC4(len);
		if (buf == NULL)
			return -1;
		if (FUNC1(test->data, FUNC6(buf, len), len) < 0) {
			FUNC5(buf);
			return -1;
		}
		if (FUNC7(buf, &attr) != test->result) {
			FUNC3(MSG_ERROR, "WPS attribute parsing test %u failed: %s",
				   i, test->data);
			ret = -1;
		}
		switch (test->extra) {
		case 1:
			if (!attr.network_key || !attr.ap_setup_locked)
				ret = -1;
			break;
		case 2:
			if (attr.num_cred != MAX_CRED_COUNT)
				ret = -1;
			break;
		case 3:
			if (!attr.network_key_idx)
				ret = -1;
			break;
		case 4:
			if (attr.num_req_dev_type != MAX_REQ_DEV_TYPE_COUNT)
				ret = -1;
			break;
		case 5:
			if (attr.num_vendor_ext != MAX_WPS_PARSE_VENDOR_EXT)
				ret = -1;
			break;
		case 6:
			if (!attr.version2 ||
			    !attr.authorized_macs ||
			    !attr.network_key_shareable ||
			    !attr.request_to_enroll ||
			    !attr.settings_delay_time)
				ret = -1;
			break;
		}
		FUNC5(buf);
	}

	return ret;
}