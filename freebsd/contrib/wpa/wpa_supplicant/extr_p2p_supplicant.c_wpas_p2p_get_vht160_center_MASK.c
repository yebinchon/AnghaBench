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
typedef  int /*<<< orphan*/  u8 ;
struct wpa_supplicant {int dummy; } ;
struct hostapd_hw_modes {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BW160 ; 
 int FUNC0 (struct wpa_supplicant*,struct hostapd_hw_modes*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*,struct hostapd_hw_modes*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct wpa_supplicant *wpa_s,
			       struct hostapd_hw_modes *mode, u8 channel)
{
	if (!FUNC1(wpa_s, mode, channel, BW160))
		return 0;
	return FUNC0(wpa_s, mode, channel);
}