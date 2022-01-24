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
struct TYPE_2__ {int relative_adjust_rssi; int /*<<< orphan*/  relative_adjust_band; } ;
struct wpa_supplicant {TYPE_1__ srp; } ;

/* Variables and functions */
 int /*<<< orphan*/  WPA_SETBAND_2G ; 
 int /*<<< orphan*/  WPA_SETBAND_5G ; 
 int FUNC0 (char*) ; 
 char* FUNC1 (char const*,char) ; 
 scalar_t__ FUNC2 (char const*,char*,int) ; 

__attribute__((used)) static int FUNC3(struct wpa_supplicant *wpa_s,
					      const char *cmd)
{
	char *pos;
	int adjust_rssi;

	/* <band>:adjust_value */
	pos = FUNC1(cmd, ':');
	if (!pos)
		return -1;
	pos++;
	adjust_rssi = FUNC0(pos);
	if (adjust_rssi < -100 || adjust_rssi > 100)
		return -1;

	if (FUNC2(cmd, "2G", 2) == 0)
		wpa_s->srp.relative_adjust_band = WPA_SETBAND_2G;
	else if (FUNC2(cmd, "5G", 2) == 0)
		wpa_s->srp.relative_adjust_band = WPA_SETBAND_5G;
	else
		return -1;

	wpa_s->srp.relative_adjust_rssi = adjust_rssi;

	return 0;
}