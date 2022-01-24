#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wpa_radio_work {int /*<<< orphan*/  list; TYPE_2__* wpa_s; int /*<<< orphan*/  type; scalar_t__ started; } ;
struct TYPE_4__ {TYPE_1__* radio; struct wpa_radio_work* p2p_scan_work; struct wpa_radio_work* scan_work; } ;
struct TYPE_3__ {scalar_t__ num_active_works; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_radio_work*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct wpa_radio_work*,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct wpa_radio_work *work)
{
	if (work->wpa_s->scan_work == work) {
		/* This should not really happen. */
		FUNC2(work->wpa_s, MSG_INFO, "Freeing radio work '%s'@%p (started=%d) that is marked as scan_work",
			work->type, work, work->started);
		work->wpa_s->scan_work = NULL;
	}

#ifdef CONFIG_P2P
	if (work->wpa_s->p2p_scan_work == work) {
		/* This should not really happen. */
		wpa_dbg(work->wpa_s, MSG_INFO, "Freeing radio work '%s'@%p (started=%d) that is marked as p2p_scan_work",
			work->type, work, work->started);
		work->wpa_s->p2p_scan_work = NULL;
	}
#endif /* CONFIG_P2P */

	if (work->started) {
		work->wpa_s->radio->num_active_works--;
		FUNC2(work->wpa_s, MSG_DEBUG,
			"radio_work_free('%s'@%p): num_active_works --> %u",
			work->type, work,
			work->wpa_s->radio->num_active_works);
	}

	FUNC0(&work->list);
	FUNC1(work);
}