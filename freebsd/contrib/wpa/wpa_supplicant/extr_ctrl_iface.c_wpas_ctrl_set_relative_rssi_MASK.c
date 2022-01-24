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
struct TYPE_2__ {int relative_rssi_set; int relative_rssi; } ;
struct wpa_supplicant {TYPE_1__ srp; } ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

__attribute__((used)) static int
FUNC2(struct wpa_supplicant *wpa_s, const char *cmd)
{
	int relative_rssi;

	if (FUNC1(cmd, "disable") == 0) {
		wpa_s->srp.relative_rssi_set = 0;
		return 0;
	}

	relative_rssi = FUNC0(cmd);
	if (relative_rssi < 0 || relative_rssi > 100)
		return -1;
	wpa_s->srp.relative_rssi = relative_rssi;
	wpa_s->srp.relative_rssi_set = 1;
	return 0;
}