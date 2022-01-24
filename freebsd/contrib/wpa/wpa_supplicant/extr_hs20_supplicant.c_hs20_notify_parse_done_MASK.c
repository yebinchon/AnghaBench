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
struct wpa_supplicant {int /*<<< orphan*/  fetch_osu_icon_in_progress; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hs20_continue_icon_fetch ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*) ; 

void FUNC2(struct wpa_supplicant *wpa_s)
{
	if (!wpa_s->fetch_osu_icon_in_progress)
		return;
	if (FUNC0(hs20_continue_icon_fetch, wpa_s, NULL))
		return;
	/*
	 * We are going through icon fetch, but no icon response was received.
	 * Assume this means the current AP could not provide an answer to avoid
	 * getting stuck in fetch iteration.
	 */
	FUNC1(wpa_s);
}