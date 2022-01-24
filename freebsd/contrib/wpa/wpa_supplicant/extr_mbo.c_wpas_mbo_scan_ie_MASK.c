#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct wpabuf {int dummy; } ;
struct wpa_supplicant {int enable_oce; TYPE_1__* conf; } ;
struct TYPE_2__ {int mbo_cell_capa; } ;

/* Variables and functions */
 int MBO_ATTR_ID_CELL_DATA_CAPA ; 
 int MBO_OUI_TYPE ; 
 int OCE_ATTR_ID_CAPA_IND ; 
 int OCE_RELEASE ; 
 int OCE_STA ; 
 int /*<<< orphan*/  OUI_WFA ; 
 int WLAN_EID_VENDOR_SPECIFIC ; 
 int* FUNC0 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int) ; 

void FUNC3(struct wpa_supplicant *wpa_s, struct wpabuf *ie)
{
	u8 *len;

	FUNC2(ie, WLAN_EID_VENDOR_SPECIFIC);
	len = FUNC0(ie, 1);

	FUNC1(ie, OUI_WFA);
	FUNC2(ie, MBO_OUI_TYPE);

	FUNC2(ie, MBO_ATTR_ID_CELL_DATA_CAPA);
	FUNC2(ie, 1);
	FUNC2(ie, wpa_s->conf->mbo_cell_capa);
	if (wpa_s->enable_oce & OCE_STA) {
		FUNC2(ie, OCE_ATTR_ID_CAPA_IND);
		FUNC2(ie, 1);
		FUNC2(ie, OCE_RELEASE);
	}
	*len = (u8 *) FUNC0(ie, 0) - len - 1;
}