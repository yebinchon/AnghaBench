#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wps_data {TYPE_2__* wps; } ;
struct wpabuf {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  mac_addr; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_MAC_ADDR ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct wps_data *wps, struct wpabuf *msg)
{
	FUNC0(MSG_DEBUG, "WPS:  * MAC Address (AP BSSID)");
	FUNC1(msg, ATTR_MAC_ADDR);
	FUNC1(msg, ETH_ALEN);
	FUNC2(msg, wps->wps->dev.mac_addr, ETH_ALEN);
	return 0;
}