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
struct wpa_dbus_method_desc {int /*<<< orphan*/  args; scalar_t__ dbus_method; int /*<<< orphan*/  dbus_interface; } ;
struct interfaces {int /*<<< orphan*/  xml; } ;
struct dl_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 struct interfaces* FUNC1 (struct dl_list*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(
	struct dl_list *list, const struct wpa_dbus_method_desc *methods)
{
	const struct wpa_dbus_method_desc *dsc;
	struct interfaces *iface;

	for (dsc = methods; dsc && dsc->dbus_method; dsc++) {
		iface = FUNC1(list, dsc->dbus_interface);
		if (iface)
			FUNC0(iface->xml, "method", dsc->dbus_method,
				  dsc->args, 1);
	}
}