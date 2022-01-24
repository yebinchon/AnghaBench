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
struct wpa_supplicant {int /*<<< orphan*/  conf; } ;
struct wpa_ssid {int disabled; } ;

/* Variables and functions */
 struct wpa_ssid* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_ssid*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*,struct wpa_ssid*) ; 

struct wpa_ssid * FUNC3(struct wpa_supplicant *wpa_s)
{
	struct wpa_ssid *ssid;

	ssid = FUNC0(wpa_s->conf);
	if (!ssid)
		return NULL;
	FUNC2(wpa_s, ssid);
	ssid->disabled = 1;
	FUNC1(ssid);

	return ssid;
}