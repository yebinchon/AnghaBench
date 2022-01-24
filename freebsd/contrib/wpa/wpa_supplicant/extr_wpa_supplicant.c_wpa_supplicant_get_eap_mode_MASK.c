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
struct wpa_supplicant {scalar_t__ key_mgmt; int /*<<< orphan*/  eapol; } ;

/* Variables and functions */
 scalar_t__ WPA_KEY_MGMT_IEEE8021X_NO_WPA ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

const char * FUNC2(struct wpa_supplicant *wpa_s)
{
	const char *eapol_method;

        if (FUNC1(wpa_s->key_mgmt) == 0 &&
            wpa_s->key_mgmt != WPA_KEY_MGMT_IEEE8021X_NO_WPA) {
		return "NO-EAP";
	}

	eapol_method = FUNC0(wpa_s->eapol);
	if (eapol_method == NULL)
		return "UNKNOWN-EAP";

	return eapol_method;
}