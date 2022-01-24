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
struct wpa_supplicant {int dummy; } ;
struct wpa_scan_results {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wpa_scan_results*) ; 
 struct wpa_scan_results* FUNC1 (struct wpa_supplicant*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC2(struct wpa_supplicant *wpa_s)
{
	struct wpa_scan_results *scan_res;
	scan_res = FUNC1(wpa_s, NULL, 0);
	if (scan_res == NULL)
		return -1;
	FUNC0(scan_res);

	return 0;
}