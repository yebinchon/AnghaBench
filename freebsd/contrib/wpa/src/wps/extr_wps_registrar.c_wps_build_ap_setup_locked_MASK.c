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
struct wps_context {int ap_setup_locked; } ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int ATTR_AP_SETUP_LOCKED ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int) ; 

__attribute__((used)) static int FUNC3(struct wps_context *wps,
				     struct wpabuf *msg)
{
	if (wps->ap_setup_locked && wps->ap_setup_locked != 2) {
		FUNC0(MSG_DEBUG, "WPS:  * AP Setup Locked");
		FUNC1(msg, ATTR_AP_SETUP_LOCKED);
		FUNC1(msg, 1);
		FUNC2(msg, 1);
	}
	return 0;
}