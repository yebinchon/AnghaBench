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
struct wpa_supplicant {TYPE_1__* conf; } ;
struct wpa_driver_capa {int dummy; } ;
struct wowlan_triggers {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  wowlan_triggers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wowlan_triggers*) ; 
 int FUNC1 (struct wpa_supplicant*,struct wowlan_triggers*) ; 
 struct wowlan_triggers* FUNC2 (int /*<<< orphan*/ ,struct wpa_driver_capa const*) ; 

__attribute__((used)) static int FUNC3(struct wpa_supplicant *wpa_s,
				    const struct wpa_driver_capa *capa)
{
	struct wowlan_triggers *triggers;
	int ret = 0;

	if (!wpa_s->conf->wowlan_triggers)
		return 0;

	triggers = FUNC2(wpa_s->conf->wowlan_triggers, capa);
	if (triggers) {
		ret = FUNC1(wpa_s, triggers);
		FUNC0(triggers);
	}
	return ret;
}