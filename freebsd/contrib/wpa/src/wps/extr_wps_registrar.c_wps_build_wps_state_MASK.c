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
struct wps_context {int /*<<< orphan*/  wps_state; } ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int ATTR_WPS_STATE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct wps_context *wps, struct wpabuf *msg)
{
	FUNC0(MSG_DEBUG, "WPS:  * Wi-Fi Protected Setup State (%d)",
		   wps->wps_state);
	FUNC1(msg, ATTR_WPS_STATE);
	FUNC1(msg, 1);
	FUNC2(msg, wps->wps_state);
	return 0;
}