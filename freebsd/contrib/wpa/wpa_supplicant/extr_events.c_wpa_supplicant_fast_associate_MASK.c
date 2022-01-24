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
struct wpa_supplicant {scalar_t__ last_scan_res_used; int /*<<< orphan*/  last_scan; scalar_t__ ignore_post_flush_scan_res; } ;
struct os_reltime {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct os_reltime*) ; 
 scalar_t__ FUNC1 (struct os_reltime*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct wpa_supplicant*,int /*<<< orphan*/ ,int) ; 

int FUNC4(struct wpa_supplicant *wpa_s)
{
#ifdef CONFIG_NO_SCAN_PROCESSING
	return -1;
#else /* CONFIG_NO_SCAN_PROCESSING */
	struct os_reltime now;

	wpa_s->ignore_post_flush_scan_res = 0;

	if (wpa_s->last_scan_res_used == 0)
		return -1;

	FUNC0(&now);
	if (FUNC1(&now, &wpa_s->last_scan, 5)) {
		FUNC2(MSG_DEBUG, "Fast associate: Old scan results");
		return -1;
	}

	return FUNC3(wpa_s, 0, 1);
#endif /* CONFIG_NO_SCAN_PROCESSING */
}