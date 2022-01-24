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
typedef  union wpa_event_data {int dummy; } wpa_event_data ;
struct wpa_supplicant {int /*<<< orphan*/  pending_bssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 

void FUNC3(struct wpa_supplicant *wpa_s,
			       union wpa_event_data *data)
{
	FUNC0(wpa_s, MSG_DEBUG, "SME: Association timed out");
	FUNC2(wpa_s, wpa_s->pending_bssid);
	FUNC1(wpa_s);
}