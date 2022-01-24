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
struct radius_client_data {int /*<<< orphan*/  ctx; } ;
typedef  scalar_t__ RadiusType ;

/* Variables and functions */
 int EACCES ; 
 int EBADF ; 
 int EDESTADDRREQ ; 
 int EINVAL ; 
 int ENETUNREACH ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  HOSTAPD_LEVEL_INFO ; 
 int /*<<< orphan*/  HOSTAPD_MODULE_RADIUS ; 
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ RADIUS_ACCT ; 
 scalar_t__ RADIUS_ACCT_INTERIM ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct radius_client_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct radius_client_data*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct radius_client_data *radius,
					   int s, RadiusType msg_type)
{
#ifndef CONFIG_NATIVE_WINDOWS
	int _errno = errno;
	FUNC4(MSG_INFO, "send[RADIUS,s=%d]: %s", s, FUNC3(errno));
	if (_errno == ENOTCONN || _errno == EDESTADDRREQ || _errno == EINVAL ||
	    _errno == EBADF || _errno == ENETUNREACH || _errno == EACCES) {
		FUNC0(radius->ctx, NULL, HOSTAPD_MODULE_RADIUS,
			       HOSTAPD_LEVEL_INFO,
			       "Send failed - maybe interface status changed -"
			       " try to connect again");
		if (msg_type == RADIUS_ACCT ||
		    msg_type == RADIUS_ACCT_INTERIM) {
			FUNC1(radius);
			return 0;
		} else {
			FUNC2(radius);
			return 1;
		}
	}
#endif /* CONFIG_NATIVE_WINDOWS */

	return 0;
}