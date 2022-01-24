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
struct wpa_supplicant {size_t osu_prov_count; int /*<<< orphan*/ * osu_prov; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct wpa_supplicant *wpa_s)
{
	size_t i;
	for (i = 0; i < wpa_s->osu_prov_count; i++)
		FUNC0(&wpa_s->osu_prov[i]);
	FUNC1(wpa_s->osu_prov);
	wpa_s->osu_prov = NULL;
	wpa_s->osu_prov_count = 0;
}