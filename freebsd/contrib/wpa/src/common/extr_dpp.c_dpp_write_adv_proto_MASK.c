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

/* Variables and functions */
 int DPP_OUI_TYPE ; 
 int /*<<< orphan*/  OUI_WFA ; 
 int WLAN_EID_ADV_PROTO ; 
 int WLAN_EID_VENDOR_SPECIFIC ; 
 int /*<<< orphan*/  FUNC0 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,int) ; 

__attribute__((used)) static void FUNC2(struct wpabuf *buf)
{
	/* Advertisement Protocol IE */
	FUNC1(buf, WLAN_EID_ADV_PROTO);
	FUNC1(buf, 8); /* Length */
	FUNC1(buf, 0x7f);
	FUNC1(buf, WLAN_EID_VENDOR_SPECIFIC);
	FUNC1(buf, 5);
	FUNC0(buf, OUI_WFA);
	FUNC1(buf, DPP_OUI_TYPE);
	FUNC1(buf, 0x01);
}