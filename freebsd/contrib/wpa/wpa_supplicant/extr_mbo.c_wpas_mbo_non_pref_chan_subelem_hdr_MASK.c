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
 int /*<<< orphan*/  MBO_ATTR_ID_NON_PREF_CHAN_REPORT ; 
 int /*<<< orphan*/  OUI_WFA ; 
 int /*<<< orphan*/  WLAN_EID_VENDOR_SPECIFIC ; 
 int /*<<< orphan*/  FUNC0 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct wpabuf *mbo, u8 len)
{
	FUNC1(mbo, WLAN_EID_VENDOR_SPECIFIC);
	FUNC1(mbo, len); /* Length */
	FUNC0(mbo, OUI_WFA);
	FUNC1(mbo, MBO_ATTR_ID_NON_PREF_CHAN_REPORT);
}