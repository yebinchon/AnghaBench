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
struct wpa_supplicant {int /*<<< orphan*/  radio_list; int /*<<< orphan*/  ifname; struct wpa_supplicant* next; struct wpa_radio* radio; TYPE_1__* global; } ;
struct wpa_radio {int /*<<< orphan*/  ifaces; int /*<<< orphan*/  work; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {struct wpa_supplicant* ifaces; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 
 struct wpa_radio* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static struct wpa_radio * FUNC6(struct wpa_supplicant *wpa_s,
					      const char *rn)
{
	struct wpa_supplicant *iface = wpa_s->global->ifaces;
	struct wpa_radio *radio;

	while (rn && iface) {
		radio = iface->radio;
		if (radio && FUNC2(rn, radio->name) == 0) {
			FUNC5(MSG_DEBUG, "Add interface %s to existing radio %s",
				   wpa_s->ifname, rn);
			FUNC0(&radio->ifaces, &wpa_s->radio_list);
			return radio;
		}

		iface = iface->next;
	}

	FUNC5(MSG_DEBUG, "Add interface %s to a new radio %s",
		   wpa_s->ifname, rn ? rn : "N/A");
	radio = FUNC4(sizeof(*radio));
	if (radio == NULL)
		return NULL;

	if (rn)
		FUNC3(radio->name, rn, sizeof(radio->name));
	FUNC1(&radio->ifaces);
	FUNC1(&radio->work);
	FUNC0(&radio->ifaces, &wpa_s->radio_list);

	return radio;
}