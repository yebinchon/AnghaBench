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
struct wpa_scan_results {size_t num; int /*<<< orphan*/ * res; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 

void FUNC2(struct wpa_supplicant *wpa_s,
			     struct wpa_scan_results *scan_res)
{
	size_t i;

	for (i = 0; i < scan_res->num; i++)
		FUNC1(wpa_s, scan_res->res[i]);

	FUNC0(wpa_s);
}