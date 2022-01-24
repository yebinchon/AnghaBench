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
struct hostapd_wpa_psk {struct hostapd_wpa_psk* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hostapd_wpa_psk*,int) ; 

void FUNC1(struct hostapd_wpa_psk **l)
{
	struct hostapd_wpa_psk *psk, *tmp;

	for (psk = *l; psk;) {
		tmp = psk;
		psk = psk->next;
		FUNC0(tmp, sizeof(*tmp));
	}
	*l = NULL;
}