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
struct pt_query_decoder {int consume_packet; int enabled; int /*<<< orphan*/  evq; struct pt_event* event; int /*<<< orphan*/  tnt; int /*<<< orphan*/  ip; } ;
struct TYPE_3__ {int /*<<< orphan*/  ip; } ;
struct TYPE_4__ {TYPE_1__ enabled; } ;
struct pt_event {TYPE_2__ variant; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  evb_tip ; 
 struct pt_event* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct pt_event* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct pt_query_decoder*,int) ; 
 int FUNC5 (struct pt_query_decoder*) ; 
 int FUNC6 (struct pt_event*,struct pt_query_decoder*) ; 
 int FUNC7 (struct pt_event*,struct pt_query_decoder*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int pte_bad_packet ; 
 int pte_internal ; 
 int /*<<< orphan*/  ptev_enabled ; 

int FUNC9(struct pt_query_decoder *decoder)
{
	struct pt_event *ev;
	int size, errcode;

	if (!decoder)
		return -pte_internal;

	size = FUNC5(decoder);
	if (size < 0)
		return size;

	/* We send the enable event first. This is more convenient for our users
	 * and does not require them to either store or blindly apply other
	 * events that might be pending.
	 *
	 * We use the consume packet decoder flag to indicate this.
	 */
	if (!decoder->consume_packet) {
		/* This packet signals a standalone enabled event. */
		ev = FUNC2(&decoder->evq);
		if (!ev)
			return -pte_internal;

		ev->type = ptev_enabled;

		/* We can't afford having a suppressed IP here. */
		errcode = FUNC3(&ev->variant.enabled.ip,
					   &decoder->ip);
		if (errcode < 0)
			return -pte_bad_packet;

		errcode = FUNC6(ev, decoder);
		if (errcode < 0)
			return errcode;

		/* Discard any cached TNT bits.
		 *
		 * They should have been consumed at the corresponding disable
		 * event. If they have not, for whatever reason, discard them
		 * now so our user does not get out of sync.
		 */
		FUNC8(&decoder->tnt);

		/* Process pending events next. */
		decoder->consume_packet = 1;
		decoder->enabled = 1;
	} else {
		/* Process any pending events binding to TIP. */
		ev = FUNC0(&decoder->evq, evb_tip);
		if (ev) {
			errcode = FUNC7(ev, decoder);
			if (errcode < 0)
				return errcode;
		}
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

	/* We must consume the packet. */
	if (!decoder->consume_packet)
		return -pte_internal;

	decoder->consume_packet = 0;

	return FUNC4(decoder, size);
}