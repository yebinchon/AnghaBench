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
struct wpa_supplicant {TYPE_1__* conf; } ;
struct TYPE_2__ {int mbo_cell_capa; } ;

/* Variables and functions */
 int MBO_ATTR_ID_CELL_DATA_CAPA ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  OUI_WFA ; 
 int WLAN_EID_VENDOR_SPECIFIC ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_supplicant*) ; 

void FUNC5(struct wpa_supplicant *wpa_s, u8 mbo_cell_capa)
{
	u8 cell_capa[7];

	if (wpa_s->conf->mbo_cell_capa == mbo_cell_capa) {
		FUNC1(MSG_DEBUG,
			   "MBO: Cellular capability already set to %u",
			   mbo_cell_capa);
		return;
	}

	wpa_s->conf->mbo_cell_capa = mbo_cell_capa;

	cell_capa[0] = WLAN_EID_VENDOR_SPECIFIC;
	cell_capa[1] = 5; /* Length */
	FUNC0(cell_capa + 2, OUI_WFA);
	cell_capa[5] = MBO_ATTR_ID_CELL_DATA_CAPA;
	cell_capa[6] = mbo_cell_capa;

	FUNC3(wpa_s, cell_capa, 7);
	FUNC2(wpa_s);
	FUNC4(wpa_s);
}