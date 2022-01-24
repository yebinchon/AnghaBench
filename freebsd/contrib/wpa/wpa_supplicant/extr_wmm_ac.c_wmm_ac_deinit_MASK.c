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
struct wpa_supplicant {int /*<<< orphan*/ * wmm_ac_assoc_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  TS_DIR_IDX_ALL ; 
 int WMM_AC_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct wpa_supplicant *wpa_s)
{
	int i;

	for (i = 0; i < WMM_AC_NUM; i++)
		FUNC2(wpa_s, i, TS_DIR_IDX_ALL);

	/* delete pending add_ts request */
	FUNC1(wpa_s, 1);

	FUNC0(wpa_s->wmm_ac_assoc_info);
	wpa_s->wmm_ac_assoc_info = NULL;
}