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
struct hostapd_config {struct hostapd_bss_config* last_bss; scalar_t__ num_bss; struct hostapd_bss_config** bss; } ;
struct TYPE_2__ {int /*<<< orphan*/  vlan; } ;
struct hostapd_bss_config {int /*<<< orphan*/  iface; TYPE_1__ ssid; int /*<<< orphan*/ * radius; } ;

/* Variables and functions */
 scalar_t__ IFNAMSIZ ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct hostapd_bss_config*) ; 
 int /*<<< orphan*/  FUNC1 (struct hostapd_bss_config*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct hostapd_bss_config** FUNC3 (struct hostapd_bss_config**,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC7(struct hostapd_config *conf, const char *ifname)
{
	struct hostapd_bss_config **all, *bss;

	if (*ifname == '\0')
		return -1;

	all = FUNC3(conf->bss, conf->num_bss + 1,
			       sizeof(struct hostapd_bss_config *));
	if (all == NULL) {
		FUNC6(MSG_ERROR, "Failed to allocate memory for "
			   "multi-BSS entry");
		return -1;
	}
	conf->bss = all;

	bss = FUNC5(sizeof(*bss));
	if (bss == NULL)
		return -1;
	bss->radius = FUNC5(sizeof(*bss->radius));
	if (bss->radius == NULL) {
		FUNC6(MSG_ERROR, "Failed to allocate memory for "
			   "multi-BSS RADIUS data");
		FUNC1(bss);
		return -1;
	}

	conf->bss[conf->num_bss++] = bss;
	conf->last_bss = bss;

	FUNC0(bss);
	FUNC4(bss->iface, ifname, sizeof(bss->iface));
	FUNC2(bss->ssid.vlan, bss->iface, IFNAMSIZ + 1);

	return 0;
}