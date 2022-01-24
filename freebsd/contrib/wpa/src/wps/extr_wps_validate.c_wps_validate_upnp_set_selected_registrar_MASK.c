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
struct wps_parse_attr {scalar_t__* selected_registrar; int /*<<< orphan*/  uuid_r; int /*<<< orphan*/  authorized_macs_len; int /*<<< orphan*/  authorized_macs; int /*<<< orphan*/ * version2; int /*<<< orphan*/  sel_reg_config_methods; int /*<<< orphan*/  dev_password_id; int /*<<< orphan*/  version; } ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct wpabuf const*,struct wps_parse_attr*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 

int FUNC8(const struct wpabuf *tlvs)
{
	struct wps_parse_attr attr;
	int wps2;
	int sel_reg;

	if (tlvs == NULL) {
		FUNC0(MSG_INFO, "WPS-STRICT: No TLVs in "
			   "SetSelectedRegistrar");
		return -1;
	}
	if (FUNC1(tlvs, &attr) < 0) {
		FUNC0(MSG_INFO, "WPS-STRICT: Failed to parse attributes "
			   "in SetSelectedRegistrar");
		return -1;
	}

	wps2 = attr.version2 != NULL;
	sel_reg = attr.selected_registrar != NULL &&
		*attr.selected_registrar != 0;
	if (FUNC6(attr.version, 1) ||
	    FUNC3(attr.dev_password_id, sel_reg) ||
	    FUNC4(attr.sel_reg_config_methods,
						wps2, sel_reg) ||
	    FUNC7(attr.version2, wps2) ||
	    FUNC2(attr.authorized_macs,
					 attr.authorized_macs_len, wps2) ||
	    FUNC5(attr.uuid_r, wps2)) {
		FUNC0(MSG_INFO, "WPS-STRICT: Invalid "
			   "SetSelectedRegistrar");
#ifdef WPS_STRICT_WPS2
		if (wps2)
			return -1;
#else /* WPS_STRICT_WPS2 */
		return -1;
#endif /* WPS_STRICT_WPS2 */
	}

	return 0;
}