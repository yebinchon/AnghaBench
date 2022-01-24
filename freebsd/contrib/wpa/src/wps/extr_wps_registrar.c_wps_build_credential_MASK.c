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
struct wps_credential {int /*<<< orphan*/  mac_addr; } ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct wpabuf*,struct wps_credential const*) ; 
 scalar_t__ FUNC1 (struct wpabuf*,struct wps_credential const*) ; 
 scalar_t__ FUNC2 (struct wpabuf*,struct wps_credential const*) ; 
 scalar_t__ FUNC3 (struct wpabuf*,struct wps_credential const*) ; 
 scalar_t__ FUNC4 (struct wpabuf*,struct wps_credential const*) ; 
 scalar_t__ FUNC5 (struct wpabuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct wpabuf *msg,
				const struct wps_credential *cred)
{
	if (FUNC2(msg, cred) ||
	    FUNC4(msg, cred) ||
	    FUNC0(msg, cred) ||
	    FUNC1(msg, cred) ||
	    FUNC3(msg, cred) ||
	    FUNC5(msg, cred->mac_addr))
		return -1;
	return 0;
}