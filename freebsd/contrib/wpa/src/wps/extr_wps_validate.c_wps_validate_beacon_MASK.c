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
struct wps_parse_attr {scalar_t__* selected_registrar; int /*<<< orphan*/  authorized_macs_len; int /*<<< orphan*/  authorized_macs; int /*<<< orphan*/ * version2; int /*<<< orphan*/  rf_bands; int /*<<< orphan*/  uuid_e; int /*<<< orphan*/  sel_reg_config_methods; int /*<<< orphan*/  dev_password_id; int /*<<< orphan*/  ap_setup_locked; int /*<<< orphan*/  wps_state; int /*<<< orphan*/  version; } ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct wpabuf const*,struct wps_parse_attr*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC7 (scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int) ; 

int FUNC12(const struct wpabuf *wps_ie)
{
	struct wps_parse_attr attr;
	int wps2, sel_reg;

	if (wps_ie == NULL) {
		FUNC0(MSG_INFO, "WPS-STRICT: No WPS IE in Beacon frame");
		return -1;
	}
	if (FUNC1(wps_ie, &attr) < 0) {
		FUNC0(MSG_INFO, "WPS-STRICT: Failed to parse WPS IE in "
			   "Beacon frame");
		return -1;
	}

	wps2 = attr.version2 != NULL;
	sel_reg = attr.selected_registrar != NULL &&
		*attr.selected_registrar != 0;
	if (FUNC9(attr.version, 1) ||
	    FUNC11(attr.wps_state, 1) ||
	    FUNC2(attr.ap_setup_locked, 0) ||
	    FUNC7(attr.selected_registrar, 0) ||
	    FUNC4(attr.dev_password_id, sel_reg) ||
	    FUNC6(attr.sel_reg_config_methods,
						wps2, sel_reg) ||
	    FUNC8(attr.uuid_e, 0) ||
	    FUNC5(attr.rf_bands, 0) ||
	    FUNC10(attr.version2, wps2) ||
	    FUNC3(attr.authorized_macs,
					 attr.authorized_macs_len, 0)) {
		FUNC0(MSG_INFO, "WPS-STRICT: Invalid Beacon frame");
		return -1;
	}

	return 0;
}