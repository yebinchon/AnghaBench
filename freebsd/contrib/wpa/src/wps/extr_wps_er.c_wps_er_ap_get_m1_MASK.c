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
struct wps_parse_attr {scalar_t__ mac_addr; int /*<<< orphan*/ * wps_state; scalar_t__ primary_dev_type; } ;
struct wps_er_ap {int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  wps_state; int /*<<< orphan*/  pri_dev_type; } ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wps_er_ap*) ; 
 scalar_t__ FUNC3 (struct wpabuf*,struct wps_parse_attr*) ; 

__attribute__((used)) static void FUNC4(struct wps_er_ap *ap, struct wpabuf *m1)
{
	struct wps_parse_attr attr;

	if (FUNC3(m1, &attr) < 0) {
		FUNC1(MSG_DEBUG, "WPS ER: Failed to parse M1");
		return;
	}
	if (attr.primary_dev_type)
		FUNC0(ap->pri_dev_type, attr.primary_dev_type, 8);
	if (attr.wps_state)
		ap->wps_state = *attr.wps_state;
	if (attr.mac_addr)
		FUNC0(ap->mac_addr, attr.mac_addr, ETH_ALEN);

	FUNC2(ap);
}