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
struct wpa_supplicant {int /*<<< orphan*/  last_tspecs_count; int /*<<< orphan*/ *** tspecs; int /*<<< orphan*/ * last_tspecs; int /*<<< orphan*/  wmm_ac_assoc_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int TS_DIR_IDX_COUNT ; 
 int WMM_AC_NUM ; 
 int /*<<< orphan*/ * FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*) ; 
 int FUNC2 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 

void FUNC4(struct wpa_supplicant *wpa_s)
{
	int ac, dir, tspecs_count;

	FUNC3(MSG_DEBUG, "WMM AC: Save last configured tspecs");

	if (!wpa_s->wmm_ac_assoc_info)
		return;

	tspecs_count = FUNC2(wpa_s);
	if (!tspecs_count) {
		FUNC3(MSG_DEBUG, "WMM AC: No configured TSPECs");
		return;
	}

	FUNC3(MSG_DEBUG, "WMM AC: Saving tspecs");

	FUNC1(wpa_s);
	wpa_s->last_tspecs = FUNC0(tspecs_count,
				       sizeof(*wpa_s->last_tspecs));
	if (!wpa_s->last_tspecs) {
		FUNC3(MSG_ERROR, "WMM AC: Failed to save tspecs!");
		return;
	}

	for (ac = 0; ac < WMM_AC_NUM; ac++) {
		for (dir = 0; dir < TS_DIR_IDX_COUNT; dir++) {
			if (!wpa_s->tspecs[ac][dir])
				continue;

			wpa_s->last_tspecs[wpa_s->last_tspecs_count++] =
				*wpa_s->tspecs[ac][dir];
		}
	}

	FUNC3(MSG_DEBUG, "WMM AC: Successfully saved %d TSPECs",
		   wpa_s->last_tspecs_count);
}