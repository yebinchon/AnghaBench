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
struct wpa_interface_info {struct wpa_interface_info* desc; struct wpa_interface_info* ifname; struct wpa_interface_info* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wpa_interface_info*) ; 

__attribute__((used)) static void FUNC1(struct wpa_interface_info *iface)
{
	struct wpa_interface_info *prev;

	while (iface) {
		prev = iface;
		iface = iface->next;

		FUNC0(prev->ifname);
		FUNC0(prev->desc);
		FUNC0(prev);
	}
}