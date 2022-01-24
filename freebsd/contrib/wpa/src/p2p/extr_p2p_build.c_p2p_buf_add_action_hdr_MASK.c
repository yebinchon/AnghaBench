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
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  P2P_IE_VENDOR_TYPE ; 
 int /*<<< orphan*/  WLAN_ACTION_VENDOR_SPECIFIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int /*<<< orphan*/ ) ; 

void FUNC3(struct wpabuf *buf, u8 subtype, u8 dialog_token)
{
	FUNC2(buf, WLAN_ACTION_VENDOR_SPECIFIC);
	FUNC1(buf, P2P_IE_VENDOR_TYPE);

	FUNC2(buf, subtype); /* OUI Subtype */
	FUNC2(buf, dialog_token);
	FUNC0(MSG_DEBUG, "P2P: * Dialog Token: %d", dialog_token);
}