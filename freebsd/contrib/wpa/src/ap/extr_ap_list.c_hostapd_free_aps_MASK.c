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
struct hostapd_iface {struct ap_info* ap_list; } ;
struct ap_info {struct ap_info* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hostapd_iface*,struct ap_info*) ; 

__attribute__((used)) static void FUNC1(struct hostapd_iface *iface)
{
	struct ap_info *ap, *prev;

	ap = iface->ap_list;

	while (ap) {
		prev = ap;
		ap = ap->next;
		FUNC0(iface, prev);
	}

	iface->ap_list = NULL;
}