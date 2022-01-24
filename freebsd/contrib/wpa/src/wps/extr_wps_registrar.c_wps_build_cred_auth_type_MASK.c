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
struct wps_credential {int auth_type; } ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int ATTR_AUTH_TYPE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,int) ; 

__attribute__((used)) static int FUNC2(struct wpabuf *msg,
				    const struct wps_credential *cred)
{
	FUNC0(MSG_DEBUG, "WPS:  * Authentication Type (0x%x)",
		   cred->auth_type);
	FUNC1(msg, ATTR_AUTH_TYPE);
	FUNC1(msg, 2);
	FUNC1(msg, cred->auth_type);
	return 0;
}