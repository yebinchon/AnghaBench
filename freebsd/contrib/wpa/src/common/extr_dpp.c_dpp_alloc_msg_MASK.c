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
struct wpabuf {int dummy; } ;
typedef  enum dpp_public_action_frame_type { ____Placeholder_dpp_public_action_frame_type } dpp_public_action_frame_type ;

/* Variables and functions */
 int DPP_OUI_TYPE ; 
 int /*<<< orphan*/  OUI_WFA ; 
 int WLAN_ACTION_PUBLIC ; 
 int WLAN_PA_VENDOR_SPECIFIC ; 
 struct wpabuf* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int) ; 

struct wpabuf * FUNC3(enum dpp_public_action_frame_type type,
			      size_t len)
{
	struct wpabuf *msg;

	msg = FUNC0(8 + len);
	if (!msg)
		return NULL;
	FUNC2(msg, WLAN_ACTION_PUBLIC);
	FUNC2(msg, WLAN_PA_VENDOR_SPECIFIC);
	FUNC1(msg, OUI_WFA);
	FUNC2(msg, DPP_OUI_TYPE);
	FUNC2(msg, 1); /* Crypto Suite */
	FUNC2(msg, type);
	return msg;
}