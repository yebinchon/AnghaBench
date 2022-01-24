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
struct wpa_supplicant {int drv_flags; struct wpa_radio* radio; } ;
struct wpa_radio_work {unsigned int freq; char const* type; void (* cb ) (struct wpa_radio_work*,int) ;int /*<<< orphan*/  list; void* bands; void* ctx; struct wpa_supplicant* wpa_s; int /*<<< orphan*/  time; } ;
struct wpa_radio {int /*<<< orphan*/  num_active_works; int /*<<< orphan*/  work; } ;
struct wpa_driver_scan_params {int /*<<< orphan*/ * freqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_ACTIVE_WORKS ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int WPA_DRIVER_FLAGS_OFFCHANNEL_SIMULTANEOUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 struct wpa_radio_work* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC7 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*,...) ; 
 void* FUNC8 (unsigned int) ; 
 void* FUNC9 (struct wpa_supplicant*,int /*<<< orphan*/ *) ; 

int FUNC10(struct wpa_supplicant *wpa_s, unsigned int freq,
		   const char *type, int next,
		   void (*cb)(struct wpa_radio_work *work, int deinit),
		   void *ctx)
{
	struct wpa_radio *radio = wpa_s->radio;
	struct wpa_radio_work *work;
	int was_empty;

	work = FUNC5(sizeof(*work));
	if (work == NULL)
		return -1;
	FUNC7(wpa_s, MSG_DEBUG, "Add radio work '%s'@%p", type, work);
	FUNC3(&work->time);
	work->freq = freq;
	work->type = type;
	work->wpa_s = wpa_s;
	work->cb = cb;
	work->ctx = ctx;

	if (freq)
		work->bands = FUNC8(freq);
	else if (FUNC4(type, "scan") == 0 ||
		 FUNC4(type, "p2p-scan") == 0)
		work->bands = FUNC9(wpa_s,
					     ((struct wpa_driver_scan_params *)
					      ctx)->freqs);
	else
		work->bands = FUNC9(wpa_s, NULL);

	was_empty = FUNC2(&wpa_s->radio->work);
	if (next)
		FUNC0(&wpa_s->radio->work, &work->list);
	else
		FUNC1(&wpa_s->radio->work, &work->list);
	if (was_empty) {
		FUNC7(wpa_s, MSG_DEBUG, "First radio work item in the queue - schedule start immediately");
		FUNC6(wpa_s);
	} else if ((wpa_s->drv_flags & WPA_DRIVER_FLAGS_OFFCHANNEL_SIMULTANEOUS)
		   && radio->num_active_works < MAX_ACTIVE_WORKS) {
		FUNC7(wpa_s, MSG_DEBUG,
			"Try to schedule a radio work (num_active_works=%u)",
			radio->num_active_works);
		FUNC6(wpa_s);
	}

	return 0;
}