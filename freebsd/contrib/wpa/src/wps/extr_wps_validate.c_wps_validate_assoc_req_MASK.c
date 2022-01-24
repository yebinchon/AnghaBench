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
struct wps_parse_attr {int /*<<< orphan*/ * version2; int /*<<< orphan*/  request_type; int /*<<< orphan*/  version; } ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct wpabuf const*,struct wps_parse_attr*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 

int FUNC5(const struct wpabuf *wps_ie)
{
	struct wps_parse_attr attr;
	int wps2;

	if (wps_ie == NULL) {
		FUNC0(MSG_INFO, "WPS-STRICT: No WPS IE in "
			   "(Re)Association Request frame");
		return -1;
	}
	if (FUNC1(wps_ie, &attr) < 0) {
		FUNC0(MSG_INFO, "WPS-STRICT: Failed to parse WPS IE in "
			   "(Re)Association Request frame");
		return -1;
	}

	wps2 = attr.version2 != NULL;
	if (FUNC3(attr.version, 1) ||
	    FUNC2(attr.request_type, 1) ||
	    FUNC4(attr.version2, wps2)) {
		FUNC0(MSG_INFO, "WPS-STRICT: Invalid (Re)Association "
			   "Request frame");
		return -1;
	}

	return 0;
}