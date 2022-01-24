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
struct wpa_supplicant {scalar_t__ ext_work_in_progress; struct wpa_radio* radio; } ;
struct wpa_radio {int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct wpa_radio*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpa_radio*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  radio_start_next_work ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

void FUNC4(struct wpa_supplicant *wpa_s)
{
	struct wpa_radio *radio = wpa_s->radio;

	if (FUNC0(&radio->work))
		return;
	if (wpa_s->ext_work_in_progress) {
		FUNC3(MSG_DEBUG,
			   "External radio work in progress - delay start of pending item");
		return;
	}
	FUNC1(radio_start_next_work, radio, NULL);
	FUNC2(0, 0, radio_start_next_work, radio, NULL);
}