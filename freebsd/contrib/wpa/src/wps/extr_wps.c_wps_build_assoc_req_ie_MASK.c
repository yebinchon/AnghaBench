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
typedef  scalar_t__ u8 ;
struct wpabuf {int dummy; } ;
typedef  enum wps_request_type { ____Placeholder_wps_request_type } wps_request_type ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  WLAN_EID_VENDOR_SPECIFIC ; 
 int /*<<< orphan*/  WPS_DEV_OUI_WFA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*) ; 
 scalar_t__ FUNC3 (struct wpabuf*) ; 
 scalar_t__* FUNC4 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct wpabuf*,int) ; 
 scalar_t__ FUNC8 (struct wpabuf*) ; 
 scalar_t__ FUNC9 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct wpabuf * FUNC10(enum wps_request_type req_type)
{
	struct wpabuf *ie;
	u8 *len;

	FUNC0(MSG_DEBUG, "WPS: Building WPS IE for (Re)Association "
		   "Request");
	ie = FUNC1(100);
	if (ie == NULL)
		return NULL;

	FUNC6(ie, WLAN_EID_VENDOR_SPECIFIC);
	len = FUNC4(ie, 1);
	FUNC5(ie, WPS_DEV_OUI_WFA);

	if (FUNC8(ie) ||
	    FUNC7(ie, req_type) ||
	    FUNC9(ie, 0, NULL, 0, 0)) {
		FUNC2(ie);
		return NULL;
	}

	*len = FUNC3(ie) - 2;

	return ie;
}