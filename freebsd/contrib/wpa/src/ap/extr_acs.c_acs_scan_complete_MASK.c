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
struct hostapd_iface {scalar_t__ acs_num_completed_scans; TYPE_1__* conf; int /*<<< orphan*/ * bss; int /*<<< orphan*/ * scan_cb; } ;
struct TYPE_2__ {scalar_t__ acs_num_scans; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct hostapd_iface*) ; 
 int FUNC1 (struct hostapd_iface*) ; 
 int /*<<< orphan*/  FUNC2 (struct hostapd_iface*) ; 
 int /*<<< orphan*/  FUNC3 (struct hostapd_iface*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC6(struct hostapd_iface *iface)
{
	int err;

	iface->scan_cb = NULL;

	FUNC5(MSG_DEBUG, "ACS: Using survey based algorithm (acs_num_scans=%d)",
		   iface->conf->acs_num_scans);

	err = FUNC4(iface->bss[0], 0);
	if (err) {
		FUNC5(MSG_ERROR, "ACS: Failed to get survey data");
		goto fail;
	}

	if (++iface->acs_num_completed_scans < iface->conf->acs_num_scans) {
		err = FUNC1(iface);
		if (err) {
			FUNC5(MSG_ERROR, "ACS: Failed to request scan");
			goto fail;
		}

		return;
	}

	FUNC2(iface);
	return;
fail:
	FUNC3(iface, 1);
	FUNC0(iface);
}