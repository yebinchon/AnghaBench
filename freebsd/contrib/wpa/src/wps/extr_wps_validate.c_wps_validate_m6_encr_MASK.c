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
struct wps_parse_attr {int /*<<< orphan*/  key_wrap_auth; int /*<<< orphan*/  r_snonce2; } ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct wpabuf const*,struct wps_parse_attr*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 

int FUNC4(const struct wpabuf *tlvs, int wps2)
{
	struct wps_parse_attr attr;

	if (tlvs == NULL) {
		FUNC0(MSG_INFO, "WPS-STRICT: No TLVs in M6 encrypted "
			   "settings");
		return -1;
	}
	if (FUNC1(tlvs, &attr) < 0) {
		FUNC0(MSG_INFO, "WPS-STRICT: Failed to parse attributes "
			   "in M6 encrypted settings");
		return -1;
	}

	if (FUNC3(attr.r_snonce2, 1) ||
	    FUNC2(attr.key_wrap_auth, 1)) {
		FUNC0(MSG_INFO, "WPS-STRICT: Invalid M6 encrypted "
			   "settings");
#ifdef WPS_STRICT_WPS2
		if (wps2)
			return -1;
#else /* WPS_STRICT_WPS2 */
		return -1;
#endif /* WPS_STRICT_WPS2 */
	}

	return 0;
}