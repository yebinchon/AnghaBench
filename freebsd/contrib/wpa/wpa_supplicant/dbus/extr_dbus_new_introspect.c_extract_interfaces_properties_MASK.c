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
struct wpa_dbus_property_desc {int /*<<< orphan*/  dbus_interface; scalar_t__ dbus_property; } ;
struct interfaces {int /*<<< orphan*/  xml; } ;
struct dl_list {int dummy; } ;

/* Variables and functions */
 struct interfaces* FUNC0 (struct dl_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct wpa_dbus_property_desc const*) ; 

__attribute__((used)) static void FUNC2(
	struct dl_list *list, const struct wpa_dbus_property_desc *properties)
{
	const struct wpa_dbus_property_desc *dsc;
	struct interfaces *iface;

	for (dsc = properties; dsc && dsc->dbus_property; dsc++) {
		iface = FUNC0(list, dsc->dbus_interface);
		if (iface)
			FUNC1(iface->xml, dsc);
	}
}