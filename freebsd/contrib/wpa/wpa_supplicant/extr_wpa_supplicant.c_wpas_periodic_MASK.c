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
struct wpa_supplicant {TYPE_1__* conf; struct wpa_supplicant* next; } ;
struct wpa_global {struct wpa_supplicant* ifaces; scalar_t__ p2p; } ;
struct TYPE_2__ {int /*<<< orphan*/  bss_expiration_age; } ;

/* Variables and functions */
 int /*<<< orphan*/  WPA_SUPPLICANT_CLEANUP_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void (*) (void*,void*),struct wpa_global*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void *eloop_ctx, void *timeout_ctx)
{
	struct wpa_global *global = eloop_ctx;
	struct wpa_supplicant *wpa_s;

	FUNC1(WPA_SUPPLICANT_CLEANUP_INTERVAL, 0,
			       wpas_periodic, global, NULL);

#ifdef CONFIG_P2P
	if (global->p2p)
		p2p_expire_peers(global->p2p);
#endif /* CONFIG_P2P */

	for (wpa_s = global->ifaces; wpa_s; wpa_s = wpa_s->next) {
		FUNC3(wpa_s, wpa_s->conf->bss_expiration_age);
#ifdef CONFIG_AP
		ap_periodic(wpa_s);
#endif /* CONFIG_AP */
	}
}