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
struct pt_query_decoder {int /*<<< orphan*/  evq; struct pt_event* event; } ;
struct TYPE_3__ {int /*<<< orphan*/  ip; } ;
struct TYPE_4__ {TYPE_1__ disabled; } ;
struct pt_event {TYPE_2__ variant; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  evb_tip ; 
 struct pt_event* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct pt_event* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct pt_query_decoder*,int) ; 
 int FUNC4 (struct pt_query_decoder*) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct pt_event*,struct pt_query_decoder*) ; 
 int FUNC6 (struct pt_event*,struct pt_query_decoder*) ; 
 int FUNC7 (struct pt_event*,struct pt_query_decoder*) ; 
 int pte_internal ; 
 int /*<<< orphan*/  ptev_disabled ; 

int FUNC8(struct pt_query_decoder *decoder)
{
	struct pt_event *ev;
	int size, errcode;

	if (!decoder)
		return -pte_internal;

	size = FUNC4(decoder);
	if (size < 0)
		return size;

	/* Process any pending events binding to TIP. */
	ev = FUNC0(&decoder->evq, evb_tip);
	if (ev) {
		errcode = FUNC7(ev, decoder);
		if (errcode < 0)
			return errcode;
	} else {
		/* This packet signals a standalone disabled event. */
		ev = FUNC2(&decoder->evq);
		if (!ev)
			return -pte_internal;
		ev->type = ptev_disabled;

		errcode = FUNC5(&ev->variant.disabled.ip, ev,
					  decoder);
		if (errcode < 0)
			return errcode;

		errcode = FUNC6(ev, decoder);
		if (errcode < 0)
			return errcode;
	}

	/* We must have an event. Either the initial enable event or one of the
	 * queued events.
	 */
	if (!ev)
		return -pte_internal;

	/* Publish the event. */
	decoder->event = ev;

	/* Process further pending events. */
	if (FUNC1(&decoder->evq, evb_tip))
		return 0;

	return FUNC3(decoder, size);
}