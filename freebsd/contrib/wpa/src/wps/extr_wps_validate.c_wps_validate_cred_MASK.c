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
struct wps_parse_attr {int /*<<< orphan*/  network_key_shareable; int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  encr_type; int /*<<< orphan*/  network_key_len; int /*<<< orphan*/  network_key; int /*<<< orphan*/  network_key_idx; int /*<<< orphan*/  auth_type; int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  ssid; int /*<<< orphan*/  network_idx; } ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,int /*<<< orphan*/  const*,size_t) ; 
 scalar_t__ FUNC2 (struct wpabuf*,struct wps_parse_attr*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11(const u8 *cred, size_t len)
{
	struct wps_parse_attr attr;
	struct wpabuf buf;

	if (cred == NULL)
		return -1;
	FUNC1(&buf, cred, len);
	if (FUNC2(&buf, &attr) < 0) {
		FUNC0(MSG_INFO, "WPS-STRICT: Failed to parse Credential");
		return -1;
	}

	if (FUNC6(attr.network_idx, 1) ||
	    FUNC10(attr.ssid, attr.ssid_len, 1) ||
	    FUNC3(attr.auth_type, 1) ||
	    FUNC4(attr.encr_type, 1) ||
	    FUNC8(attr.network_key_idx, 0) ||
	    FUNC7(attr.network_key, attr.network_key_len,
				     attr.encr_type, 1) ||
	    FUNC5(attr.mac_addr, 1) ||
	    FUNC9(attr.network_key_shareable, 0))
	{
		FUNC0(MSG_INFO, "WPS-STRICT: Invalid Credential");
		return -1;
	}


	return 0;
}