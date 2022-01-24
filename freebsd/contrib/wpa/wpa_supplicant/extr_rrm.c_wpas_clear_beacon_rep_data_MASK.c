#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  freqs; } ;
struct beacon_rep_data {TYPE_1__ scan_params; int /*<<< orphan*/  eids; } ;
struct wpa_supplicant {struct beacon_rep_data beacon_rep_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct beacon_rep_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  wpas_rrm_scan_timeout ; 

void FUNC4(struct wpa_supplicant *wpa_s)
{
	struct beacon_rep_data *data = &wpa_s->beacon_rep_data;

	FUNC1(wpas_rrm_scan_timeout, wpa_s, NULL);
	FUNC0(data->eids);
	FUNC2(data->scan_params.freqs);
	FUNC3(data, 0, sizeof(*data));
}