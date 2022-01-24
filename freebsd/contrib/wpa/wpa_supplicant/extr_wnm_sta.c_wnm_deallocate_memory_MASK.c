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
struct wpa_supplicant {int wnm_num_neighbor_report; int /*<<< orphan*/ * coloc_intf_elems; TYPE_1__* wnm_neighbor_report_elements; } ;
struct TYPE_2__ {struct TYPE_2__* mul_bssid; struct TYPE_2__* meas_pilot; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct wpa_supplicant *wpa_s)
{
	int i;

	for (i = 0; i < wpa_s->wnm_num_neighbor_report; i++) {
		FUNC0(wpa_s->wnm_neighbor_report_elements[i].meas_pilot);
		FUNC0(wpa_s->wnm_neighbor_report_elements[i].mul_bssid);
	}

	wpa_s->wnm_num_neighbor_report = 0;
	FUNC0(wpa_s->wnm_neighbor_report_elements);
	wpa_s->wnm_neighbor_report_elements = NULL;

	FUNC1(wpa_s->coloc_intf_elems);
	wpa_s->coloc_intf_elems = NULL;
}