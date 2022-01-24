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
struct wps_credential {scalar_t__ key_len; int /*<<< orphan*/  key; } ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 scalar_t__ ATTR_NETWORK_KEY ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct wpabuf *msg,
				      const struct wps_credential *cred)
{
	FUNC1(MSG_DEBUG, "WPS:  * Network Key (len=%d)",
		   (int) cred->key_len);
	FUNC0(MSG_DEBUG, "WPS: Network Key",
			cred->key, cred->key_len);
	FUNC2(msg, ATTR_NETWORK_KEY);
	FUNC2(msg, cred->key_len);
	FUNC3(msg, cred->key, cred->key_len);
	return 0;
}