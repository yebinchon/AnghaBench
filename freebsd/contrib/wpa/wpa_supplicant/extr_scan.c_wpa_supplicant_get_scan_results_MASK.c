#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wpa_supplicant {scalar_t__ ignore_post_flush_scan_res; } ;
struct TYPE_3__ {scalar_t__ sec; } ;
struct wpa_scan_results {size_t num; TYPE_1__ fetch_time; struct wpa_scan_res** res; } ;
struct wpa_scan_res {int dummy; } ;
struct scan_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct wpa_scan_results*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*,struct wpa_scan_results*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_scan_res**,size_t,int,int (*) (void const*,void const*)) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_supplicant*,struct wpa_scan_res*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_scan_res*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpa_supplicant*,struct scan_info*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct wpa_supplicant*,struct wpa_scan_res*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC9 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*) ; 
 struct wpa_scan_results* FUNC10 (struct wpa_supplicant*) ; 
 int FUNC11 (void const*,void const*) ; 
 int FUNC12 (void const*,void const*) ; 
 scalar_t__ FUNC13 (struct wpa_supplicant*) ; 

struct wpa_scan_results *
FUNC14(struct wpa_supplicant *wpa_s,
				struct scan_info *info, int new_scan)
{
	struct wpa_scan_results *scan_res;
	size_t i;
	int (*compar)(const void *, const void *) = wpa_scan_result_compar;

	scan_res = FUNC10(wpa_s);
	if (scan_res == NULL) {
		FUNC9(wpa_s, MSG_DEBUG, "Failed to get scan results");
		return NULL;
	}
	if (scan_res->fetch_time.sec == 0) {
		/*
		 * Make sure we have a valid timestamp if the driver wrapper
		 * does not set this.
		 */
		FUNC2(&scan_res->fetch_time);
	}
	FUNC1(wpa_s, scan_res);

	for (i = 0; i < scan_res->num; i++) {
		struct wpa_scan_res *scan_res_item = scan_res->res[i];

		FUNC5(scan_res_item);
		FUNC4(wpa_s, scan_res_item);
	}

#ifdef CONFIG_WPS
	if (wpas_wps_searching(wpa_s)) {
		wpa_dbg(wpa_s, MSG_DEBUG, "WPS: Order scan results with WPS "
			"provisioning rules");
		compar = wpa_scan_result_wps_compar;
	}
#endif /* CONFIG_WPS */

	if (scan_res->res) {
		FUNC3(scan_res->res, scan_res->num,
		      sizeof(struct wpa_scan_res *), compar);
	}
	FUNC0(scan_res);

	if (wpa_s->ignore_post_flush_scan_res) {
		/* FLUSH command aborted an ongoing scan and these are the
		 * results from the aborted scan. Do not process the results to
		 * maintain flushed state. */
		FUNC9(wpa_s, MSG_DEBUG,
			"Do not update BSS table based on pending post-FLUSH scan results");
		wpa_s->ignore_post_flush_scan_res = 0;
		return scan_res;
	}

	FUNC8(wpa_s);
	for (i = 0; i < scan_res->num; i++)
		FUNC7(wpa_s, scan_res->res[i],
					&scan_res->fetch_time);
	FUNC6(wpa_s, info, new_scan);

	return scan_res;
}