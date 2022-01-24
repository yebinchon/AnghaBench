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
struct wps_parse_attr {int /*<<< orphan*/  request_to_enroll; int /*<<< orphan*/ * version2; int /*<<< orphan*/  os_version; int /*<<< orphan*/  config_error; int /*<<< orphan*/  dev_password_id; int /*<<< orphan*/  assoc_state; int /*<<< orphan*/  rf_bands; int /*<<< orphan*/  dev_name_len; int /*<<< orphan*/  dev_name; int /*<<< orphan*/  primary_dev_type; int /*<<< orphan*/  serial_number_len; int /*<<< orphan*/  serial_number; int /*<<< orphan*/  model_number_len; int /*<<< orphan*/  model_number; int /*<<< orphan*/  model_name_len; int /*<<< orphan*/  model_name; int /*<<< orphan*/  manufacturer_len; int /*<<< orphan*/  manufacturer; int /*<<< orphan*/  wps_state; int /*<<< orphan*/  config_methods; int /*<<< orphan*/  conn_type_flags; int /*<<< orphan*/  encr_type_flags; int /*<<< orphan*/  auth_type_flags; int /*<<< orphan*/  public_key_len; int /*<<< orphan*/  public_key; int /*<<< orphan*/  enrollee_nonce; int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  uuid_e; int /*<<< orphan*/  msg_type; int /*<<< orphan*/  version; } ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct wpabuf const*,struct wps_parse_attr*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ,int) ; 

int FUNC26(const struct wpabuf *tlvs)
{
	struct wps_parse_attr attr;
	int wps2;

	if (tlvs == NULL) {
		FUNC0(MSG_INFO, "WPS-STRICT: No TLVs in M1");
		return -1;
	}
	if (FUNC1(tlvs, &attr) < 0) {
		FUNC0(MSG_INFO, "WPS-STRICT: Failed to parse attributes "
			   "in M1");
		return -1;
	}

	wps2 = attr.version2 != NULL;
	if (FUNC23(attr.version, 1) ||
	    FUNC15(attr.msg_type, 1) ||
	    FUNC22(attr.uuid_e, 1) ||
	    FUNC11(attr.mac_addr, 1) ||
	    FUNC10(attr.enrollee_nonce, 1) ||
	    FUNC18(attr.public_key, attr.public_key_len, 1) ||
	    FUNC3(attr.auth_type_flags, 1) ||
	    FUNC9(attr.encr_type_flags, 1) ||
	    FUNC6(attr.conn_type_flags, 1) ||
	    FUNC5(attr.config_methods, wps2, 1) ||
	    FUNC25(attr.wps_state, 1) ||
	    FUNC12(attr.manufacturer, attr.manufacturer_len,
				      1) ||
	    FUNC13(attr.model_name, attr.model_name_len, 1) ||
	    FUNC14(attr.model_number, attr.model_number_len,
				      1) ||
	    FUNC21(attr.serial_number,
				       attr.serial_number_len, 1) ||
	    FUNC17(attr.primary_dev_type, 1) ||
	    FUNC7(attr.dev_name, attr.dev_name_len, 1) ||
	    FUNC20(attr.rf_bands, 1) ||
	    FUNC2(attr.assoc_state, 1) ||
	    FUNC8(attr.dev_password_id, 1) ||
	    FUNC4(attr.config_error, 1) ||
	    FUNC16(attr.os_version, 1) ||
	    FUNC24(attr.version2, wps2) ||
	    FUNC19(attr.request_to_enroll, 0)) {
		FUNC0(MSG_INFO, "WPS-STRICT: Invalid M1");
#ifdef WPS_STRICT_WPS2
		if (wps2)
			return -1;
#else /* WPS_STRICT_WPS2 */
		return -1;
#endif /* WPS_STRICT_WPS2 */
	}

	return 0;
}