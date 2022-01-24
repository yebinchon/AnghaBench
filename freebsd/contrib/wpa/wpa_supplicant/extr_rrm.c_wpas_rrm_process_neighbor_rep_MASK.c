#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct wpabuf {int dummy; } ;
struct TYPE_4__ {int next_neighbor_rep_token; int /*<<< orphan*/ * neighbor_rep_cb_ctx; int /*<<< orphan*/  (* notify_neighbor_rep ) (int /*<<< orphan*/ *,struct wpabuf*) ;} ;
struct wpa_supplicant {TYPE_1__ rrm; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  (*) (TYPE_1__*,int /*<<< orphan*/ *),TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 struct wpabuf* FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 

void FUNC7(struct wpa_supplicant *wpa_s,
				   const u8 *report, size_t report_len)
{
	struct wpabuf *neighbor_rep;

	FUNC2(MSG_DEBUG, "RRM: New Neighbor Report", report, report_len);
	if (report_len < 1)
		return;

	if (report[0] != wpa_s->rrm.next_neighbor_rep_token - 1) {
		FUNC3(MSG_DEBUG,
			   "RRM: Discarding neighbor report with token %d (expected %d)",
			   report[0], wpa_s->rrm.next_neighbor_rep_token - 1);
		return;
	}

	FUNC0(wpas_rrm_neighbor_rep_timeout_handler, &wpa_s->rrm,
			     NULL);

	if (!wpa_s->rrm.notify_neighbor_rep) {
		FUNC3(MSG_ERROR, "RRM: Unexpected neighbor report");
		return;
	}

	/* skipping the first byte, which is only an id (dialog token) */
	neighbor_rep = FUNC4(report_len - 1);
	if (!neighbor_rep) {
		FUNC6(&wpa_s->rrm, NULL);
		return;
	}
	FUNC5(neighbor_rep, report + 1, report_len - 1);
	FUNC3(MSG_DEBUG, "RRM: Notifying neighbor report (token = %d)",
		   report[0]);
	wpa_s->rrm.notify_neighbor_rep(wpa_s->rrm.neighbor_rep_cb_ctx,
				       neighbor_rep);
	wpa_s->rrm.notify_neighbor_rep = NULL;
	wpa_s->rrm.neighbor_rep_cb_ctx = NULL;
}