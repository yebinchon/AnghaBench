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
struct sta_info {int /*<<< orphan*/  wpa_sm; } ;
typedef  enum eapol_event { ____Placeholder_eapol_event } eapol_event ;

/* Variables and functions */
#define  EAPOL_AUTH_REAUTHENTICATE 129 
#define  EAPOL_AUTH_SM_CHANGE 128 
 int /*<<< orphan*/  WPA_REAUTH_EAPOL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void *ctx, void *sta_ctx,
				   enum eapol_event type)
{
	/* struct hostapd_data *hapd = ctx; */
	struct sta_info *sta = sta_ctx;
	switch (type) {
	case EAPOL_AUTH_SM_CHANGE:
		FUNC1(sta->wpa_sm);
		break;
	case EAPOL_AUTH_REAUTHENTICATE:
		FUNC0(sta->wpa_sm, WPA_REAUTH_EAPOL);
		break;
	}
}