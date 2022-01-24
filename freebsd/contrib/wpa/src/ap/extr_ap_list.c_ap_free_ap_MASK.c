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
struct hostapd_iface {int /*<<< orphan*/  num_ap; } ;
struct ap_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hostapd_iface*,struct ap_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct hostapd_iface*,struct ap_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct ap_info*) ; 

__attribute__((used)) static void FUNC3(struct hostapd_iface *iface, struct ap_info *ap)
{
	FUNC0(iface, ap);
	FUNC1(iface, ap);

	iface->num_ap--;
	FUNC2(ap);
}