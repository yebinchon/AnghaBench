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
struct wpa_supplicant {unsigned int last_tspecs_count; int /*<<< orphan*/ * last_tspecs; int /*<<< orphan*/  bssid; int /*<<< orphan*/  wmm_ac_assoc_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct wpa_supplicant*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 

int FUNC2(struct wpa_supplicant *wpa_s)
{
	unsigned int i;

	if (!wpa_s->wmm_ac_assoc_info || !wpa_s->last_tspecs_count)
		return 0;

	FUNC1(MSG_DEBUG, "WMM AC: Restore %u saved tspecs",
		   wpa_s->last_tspecs_count);

	for (i = 0; i < wpa_s->last_tspecs_count; i++)
		FUNC0(wpa_s, wpa_s->bssid, &wpa_s->last_tspecs[i]);

	return 0;
}