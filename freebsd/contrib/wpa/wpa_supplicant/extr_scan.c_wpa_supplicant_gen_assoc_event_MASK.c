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
struct wpa_supplicant {struct wpa_ssid* current_ssid; } ;
struct wpa_ssid {int dummy; } ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_ASSOC ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (union wpa_event_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*,int /*<<< orphan*/ ,union wpa_event_data*) ; 
 struct wpa_ssid* FUNC3 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_supplicant*) ; 

__attribute__((used)) static void FUNC6(struct wpa_supplicant *wpa_s)
{
	struct wpa_ssid *ssid;
	union wpa_event_data data;

	ssid = FUNC3(wpa_s);
	if (ssid == NULL)
		return;

	if (wpa_s->current_ssid == NULL) {
		wpa_s->current_ssid = ssid;
		FUNC5(wpa_s);
	}
	FUNC4(wpa_s);
	FUNC1(wpa_s, MSG_DEBUG, "Already associated with a configured "
		"network - generating associated event");
	FUNC0(&data, 0, sizeof(data));
	FUNC2(wpa_s, EVENT_ASSOC, &data);
}