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
typedef  int u16 ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int ATTR_CONFIG_METHODS ; 
 int /*<<< orphan*/  WLAN_EID_VENDOR_SPECIFIC ; 
 int /*<<< orphan*/  WPS_DEV_OUI_WFA ; 
 int /*<<< orphan*/  FUNC0 (struct wpabuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct wpabuf *buf,
					    u16 config_methods)
{
	u8 *len;
	FUNC4(buf, WLAN_EID_VENDOR_SPECIFIC);
	len = FUNC1(buf, 1);
	FUNC3(buf, WPS_DEV_OUI_WFA);

	/* Config Methods */
	FUNC2(buf, ATTR_CONFIG_METHODS);
	FUNC2(buf, 2);
	FUNC2(buf, config_methods);

	FUNC0(buf, len);
}