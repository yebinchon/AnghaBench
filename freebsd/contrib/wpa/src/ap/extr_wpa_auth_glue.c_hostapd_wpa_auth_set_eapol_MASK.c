#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int wpa_eapol_variable ;
typedef  int /*<<< orphan*/  u8 ;
struct sta_info {TYPE_2__* eapol_sm; } ;
struct hostapd_data {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  dot1xAuthEapolFramesTx; void* keyDone; TYPE_1__* eap_if; void* keyRun; int /*<<< orphan*/  portControl; } ;
struct TYPE_4__ {void* eapKeyAvailable; } ;

/* Variables and functions */
 int /*<<< orphan*/  Auto ; 
 void* FALSE ; 
 void* TRUE ; 
#define  WPA_EAPOL_authorized 135 
#define  WPA_EAPOL_inc_EapolFramesTx 134 
#define  WPA_EAPOL_keyAvailable 133 
#define  WPA_EAPOL_keyDone 132 
#define  WPA_EAPOL_keyRun 131 
#define  WPA_EAPOL_portControl_Auto 130 
#define  WPA_EAPOL_portEnabled 129 
#define  WPA_EAPOL_portValid 128 
 struct sta_info* FUNC0 (struct hostapd_data*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hostapd_data*,struct sta_info*,int) ; 

__attribute__((used)) static void FUNC4(void *ctx, const u8 *addr,
				       wpa_eapol_variable var, int value)
{
	struct hostapd_data *hapd = ctx;
	struct sta_info *sta = FUNC0(hapd, addr);
	if (sta == NULL)
		return;
	switch (var) {
	case WPA_EAPOL_portEnabled:
		FUNC1(sta->eapol_sm, value);
		break;
	case WPA_EAPOL_portValid:
		FUNC2(sta->eapol_sm, value);
		break;
	case WPA_EAPOL_authorized:
		FUNC3(hapd, sta, value);
		break;
	case WPA_EAPOL_portControl_Auto:
		if (sta->eapol_sm)
			sta->eapol_sm->portControl = Auto;
		break;
	case WPA_EAPOL_keyRun:
		if (sta->eapol_sm)
			sta->eapol_sm->keyRun = value ? TRUE : FALSE;
		break;
	case WPA_EAPOL_keyAvailable:
		if (sta->eapol_sm)
			sta->eapol_sm->eap_if->eapKeyAvailable =
				value ? TRUE : FALSE;
		break;
	case WPA_EAPOL_keyDone:
		if (sta->eapol_sm)
			sta->eapol_sm->keyDone = value ? TRUE : FALSE;
		break;
	case WPA_EAPOL_inc_EapolFramesTx:
		if (sta->eapol_sm)
			sta->eapol_sm->dot1xAuthEapolFramesTx++;
		break;
	}
}