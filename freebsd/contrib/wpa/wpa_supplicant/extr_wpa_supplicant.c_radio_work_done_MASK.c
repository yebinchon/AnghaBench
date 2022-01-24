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
struct wpa_radio_work {unsigned int started; int /*<<< orphan*/  type; int /*<<< orphan*/  time; struct wpa_supplicant* wpa_s; } ;
struct os_reltime {int /*<<< orphan*/  usec; int /*<<< orphan*/  sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct os_reltime*) ; 
 int /*<<< orphan*/  FUNC1 (struct os_reltime*,int /*<<< orphan*/ *,struct os_reltime*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_radio_work*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct wpa_radio_work*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct wpa_radio_work *work)
{
	struct wpa_supplicant *wpa_s = work->wpa_s;
	struct os_reltime now, diff;
	unsigned int started = work->started;

	FUNC0(&now);
	FUNC1(&now, &work->time, &diff);
	FUNC4(wpa_s, MSG_DEBUG, "Radio work '%s'@%p %s in %ld.%06ld seconds",
		work->type, work, started ? "done" : "canceled",
		diff.sec, diff.usec);
	FUNC3(work);
	if (started)
		FUNC2(wpa_s);
}