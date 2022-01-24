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
struct wps_er_ap {int /*<<< orphan*/  (* m1_handler ) (struct wps_er_ap*,struct wpabuf*) ;} ;
struct wpabuf {int dummy; } ;
typedef  enum http_reply_code { ____Placeholder_http_reply_code } http_reply_code ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct wps_er_ap*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*) ; 
 struct wpabuf* FUNC3 (char const*,char*,int*) ; 

__attribute__((used)) static void FUNC4(struct wps_er_ap *ap, const char *dev_info)
{
	struct wpabuf *info;
	enum http_reply_code ret;

	FUNC1(MSG_DEBUG, "WPS ER: Received GetDeviceInfo response (M1) "
		   "from the AP");
	info = FUNC3(dev_info, "NewDeviceInfo", &ret);
	if (info == NULL) {
		FUNC1(MSG_DEBUG, "WPS ER: Could not extract "
			   "NewDeviceInfo from GetDeviceInfo response");
		return;
	}

	ap->m1_handler(ap, info);
	FUNC2(info);
}