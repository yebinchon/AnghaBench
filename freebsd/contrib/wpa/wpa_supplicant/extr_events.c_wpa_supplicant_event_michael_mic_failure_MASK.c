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
struct TYPE_2__ {scalar_t__ unicast; } ;
union wpa_event_data {TYPE_1__ michael_mic_failure; } ;
typedef  int /*<<< orphan*/  u8 ;
struct os_reltime {scalar_t__ sec; } ;
struct wpa_supplicant {int pending_mic_error_report; int pending_mic_error_pairwise; int countermeasures; scalar_t__ mic_errors_seen; struct os_reltime last_michael_mic_error; int /*<<< orphan*/  wpa; int /*<<< orphan*/  bssid; } ;
typedef  int /*<<< orphan*/  rval ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_WARNING ; 
 int /*<<< orphan*/  WLAN_REASON_MICHAEL_MIC_FAILURE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ,struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct os_reltime*) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct os_reltime*,struct os_reltime*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct wpa_supplicant*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wpa_supplicant_delayed_mic_error_report ; 
 int /*<<< orphan*/  wpa_supplicant_stop_countermeasures ; 

__attribute__((used)) static void
FUNC14(struct wpa_supplicant *wpa_s,
					 union wpa_event_data *data)
{
	int pairwise;
	struct os_reltime t;

	FUNC11(wpa_s, MSG_WARNING, "Michael MIC failure detected");
	pairwise = (data && data->michael_mic_failure.unicast);
	FUNC4(&t);
	if ((wpa_s->last_michael_mic_error.sec &&
	     !FUNC6(&t, &wpa_s->last_michael_mic_error, 60)) ||
	    wpa_s->pending_mic_error_report) {
		if (wpa_s->pending_mic_error_report) {
			/*
			 * Send the pending MIC error report immediately since
			 * we are going to start countermeasures and AP better
			 * do the same.
			 */
			FUNC12(wpa_s->wpa, 1,
					   wpa_s->pending_mic_error_pairwise);
		}

		/* Send the new MIC error report immediately since we are going
		 * to start countermeasures and AP better do the same.
		 */
		FUNC12(wpa_s->wpa, 1, pairwise);

		/* initialize countermeasures */
		wpa_s->countermeasures = 1;

		FUNC8(wpa_s, wpa_s->bssid);

		FUNC11(wpa_s, MSG_WARNING, "TKIP countermeasures started");

		/*
		 * Need to wait for completion of request frame. We do not get
		 * any callback for the message completion, so just wait a
		 * short while and hope for the best. */
		FUNC7(0, 10000);

		FUNC10(wpa_s, 1);
		FUNC13(wpa_s,
					      WLAN_REASON_MICHAEL_MIC_FAILURE);
		FUNC1(wpa_supplicant_stop_countermeasures,
				     wpa_s, NULL);
		FUNC2(60, 0,
				       wpa_supplicant_stop_countermeasures,
				       wpa_s, NULL);
		/* TODO: mark the AP rejected for 60 second. STA is
		 * allowed to associate with another AP.. */
	} else {
#ifdef CONFIG_DELAYED_MIC_ERROR_REPORT
		if (wpa_s->mic_errors_seen) {
			/*
			 * Reduce the effectiveness of Michael MIC error
			 * reports as a means for attacking against TKIP if
			 * more than one MIC failure is noticed with the same
			 * PTK. We delay the transmission of the reports by a
			 * random time between 0 and 60 seconds in order to
			 * force the attacker wait 60 seconds before getting
			 * the information on whether a frame resulted in a MIC
			 * failure.
			 */
			u8 rval[4];
			int sec;

			if (os_get_random(rval, sizeof(rval)) < 0)
				sec = os_random() % 60;
			else
				sec = WPA_GET_BE32(rval) % 60;
			wpa_dbg(wpa_s, MSG_DEBUG, "WPA: Delay MIC error "
				"report %d seconds", sec);
			wpa_s->pending_mic_error_report = 1;
			wpa_s->pending_mic_error_pairwise = pairwise;
			eloop_cancel_timeout(
				wpa_supplicant_delayed_mic_error_report,
				wpa_s, NULL);
			eloop_register_timeout(
				sec, os_random() % 1000000,
				wpa_supplicant_delayed_mic_error_report,
				wpa_s, NULL);
		} else {
			wpa_sm_key_request(wpa_s->wpa, 1, pairwise);
		}
#else /* CONFIG_DELAYED_MIC_ERROR_REPORT */
		FUNC12(wpa_s->wpa, 1, pairwise);
#endif /* CONFIG_DELAYED_MIC_ERROR_REPORT */
	}
	wpa_s->last_michael_mic_error = t;
	wpa_s->mic_errors_seen++;
}