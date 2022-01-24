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
typedef  int u16 ;
struct wps_data {int dummy; } ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int ATTR_ENCR_TYPE_FLAGS ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int WPS_ENCR_TYPES ; 
 int WPS_ENCR_WEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,int) ; 
 int wps_force_encr_types ; 
 scalar_t__ wps_force_encr_types_in_use ; 

int FUNC2(struct wps_data *wps, struct wpabuf *msg)
{
	u16 encr_types = WPS_ENCR_TYPES;
	encr_types &= ~WPS_ENCR_WEP;
#ifdef CONFIG_WPS_TESTING
	if (wps_force_encr_types_in_use) {
		wpa_printf(MSG_DEBUG,
			   "WPS: Testing - replace encr type 0x%x with 0x%x",
			   encr_types, wps_force_encr_types);
		encr_types = wps_force_encr_types;
	}
#endif /* CONFIG_WPS_TESTING */
	FUNC0(MSG_DEBUG, "WPS:  * Encryption Type Flags (0x%x)",
		   encr_types);
	FUNC1(msg, ATTR_ENCR_TYPE_FLAGS);
	FUNC1(msg, 2);
	FUNC1(msg, encr_types);
	return 0;
}