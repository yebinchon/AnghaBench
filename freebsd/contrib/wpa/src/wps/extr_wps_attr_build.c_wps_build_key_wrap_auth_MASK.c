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
struct wps_data {int /*<<< orphan*/  authkey; } ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_KEY_WRAP_AUTH ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int SHA256_MAC_LEN ; 
 int /*<<< orphan*/  WPS_AUTHKEY_LEN ; 
 int /*<<< orphan*/  WPS_KWA_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC6(struct wps_data *wps, struct wpabuf *msg)
{
	u8 hash[SHA256_MAC_LEN];

	FUNC1(MSG_DEBUG, "WPS:  * Key Wrap Authenticator");
	FUNC0(wps->authkey, WPS_AUTHKEY_LEN, FUNC2(msg),
		    FUNC3(msg), hash);

	FUNC4(msg, ATTR_KEY_WRAP_AUTH);
	FUNC4(msg, WPS_KWA_LEN);
	FUNC5(msg, hash, WPS_KWA_LEN);
	return 0;
}