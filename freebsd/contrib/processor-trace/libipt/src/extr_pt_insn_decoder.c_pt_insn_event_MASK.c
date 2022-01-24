#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  ip; } ;
struct TYPE_14__ {int /*<<< orphan*/  ip; } ;
struct TYPE_13__ {int /*<<< orphan*/  ip; } ;
struct TYPE_12__ {int /*<<< orphan*/  ip; } ;
struct TYPE_11__ {int /*<<< orphan*/  from; } ;
struct TYPE_10__ {int /*<<< orphan*/  at; } ;
struct TYPE_9__ {int resumed; int /*<<< orphan*/  ip; } ;
struct TYPE_16__ {TYPE_7__ mwait; TYPE_6__ exstop; TYPE_5__ async_vmcs; TYPE_4__ async_paging; TYPE_3__ async_branch; TYPE_2__ async_disabled; TYPE_1__ enabled; } ;
struct pt_event {int type; TYPE_8__ variant; int /*<<< orphan*/  ip_suppressed; } ;
struct pt_insn_decoder {int /*<<< orphan*/  iext; int /*<<< orphan*/  insn; scalar_t__ process_insn; scalar_t__ process_event; int /*<<< orphan*/  ip; int /*<<< orphan*/  enabled; struct pt_event event; } ;

/* Variables and functions */
 int /*<<< orphan*/  fallthrough ; 
 int /*<<< orphan*/  FUNC0 (struct pt_event*,struct pt_event*,size_t) ; 
 int FUNC1 (struct pt_insn_decoder*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct pt_insn_decoder*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct pt_insn_decoder*) ; 
 int FUNC4 (struct pt_insn_decoder*) ; 
 int FUNC5 (struct pt_insn_decoder*) ; 
 int FUNC6 (struct pt_insn_decoder*) ; 
 int FUNC7 (struct pt_insn_decoder*) ; 
 int FUNC8 (struct pt_insn_decoder*) ; 
 int FUNC9 (struct pt_insn_decoder*) ; 
 int FUNC10 (struct pt_insn_decoder*) ; 
 int FUNC11 (struct pt_insn_decoder*) ; 
 int FUNC12 (struct pt_insn_decoder*) ; 
 int pte_bad_query ; 
 int pte_invalid ; 
#define  ptev_async_branch 147 
#define  ptev_async_disabled 146 
#define  ptev_async_paging 145 
#define  ptev_async_vmcs 144 
#define  ptev_cbr 143 
#define  ptev_disabled 142 
#define  ptev_enabled 141 
#define  ptev_exec_mode 140 
#define  ptev_exstop 139 
#define  ptev_mnt 138 
#define  ptev_mwait 137 
#define  ptev_overflow 136 
#define  ptev_paging 135 
#define  ptev_ptwrite 134 
#define  ptev_pwre 133 
#define  ptev_pwrx 132 
#define  ptev_stop 131 
#define  ptev_tick 130 
#define  ptev_tsx 129 
#define  ptev_vmcs 128 
 int pts_event_pending ; 

int FUNC13(struct pt_insn_decoder *decoder, struct pt_event *uevent,
		  size_t size)
{
	struct pt_event *ev;
	int status;

	if (!decoder || !uevent)
		return -pte_invalid;

	/* We must currently process an event. */
	if (!decoder->process_event)
		return -pte_bad_query;

	ev = &decoder->event;
	switch (ev->type) {
	default:
		/* This is not a user event.
		 *
		 * We either indicated it wrongly or the user called
		 * pt_insn_event() without a pts_event_pending indication.
		 */
		return -pte_bad_query;

	case ptev_enabled:
		/* Indicate that tracing resumes from the IP at which tracing
		 * had been disabled before (with some special treatment for
		 * calls).
		 */
		if (decoder->ip == ev->variant.enabled.ip)
			ev->variant.enabled.resumed = 1;

		status = FUNC6(decoder);
		if (status < 0)
			return status;

		break;

	case ptev_async_disabled:
		if (!ev->ip_suppressed &&
		    decoder->ip != ev->variant.async_disabled.at)
			return -pte_bad_query;

		fallthrough;
	case ptev_disabled:
		status = FUNC5(decoder);
		if (status < 0)
			return status;

		break;

	case ptev_async_branch:
		if (decoder->ip != ev->variant.async_branch.from)
			return -pte_bad_query;

		status = FUNC4(decoder);
		if (status < 0)
			return status;

		break;

	case ptev_async_paging:
		if (!ev->ip_suppressed &&
		    decoder->ip != ev->variant.async_paging.ip)
			return -pte_bad_query;

		fallthrough;
	case ptev_paging:
		status = FUNC9(decoder);
		if (status < 0)
			return status;

		break;

	case ptev_async_vmcs:
		if (!ev->ip_suppressed &&
		    decoder->ip != ev->variant.async_vmcs.ip)
			return -pte_bad_query;

		fallthrough;
	case ptev_vmcs:
		status = FUNC12(decoder);
		if (status < 0)
			return status;

		break;

	case ptev_overflow:
		status = FUNC8(decoder);
		if (status < 0)
			return status;

		break;

	case ptev_exec_mode:
		status = FUNC7(decoder);
		if (status < 0)
			return status;

		break;

	case ptev_tsx:
		status = FUNC11(decoder);
		if (status < 0)
			return status;

		break;

	case ptev_stop:
		status = FUNC10(decoder);
		if (status < 0)
			return status;

		break;

	case ptev_exstop:
		if (!ev->ip_suppressed && decoder->enabled &&
		    decoder->ip != ev->variant.exstop.ip)
			return -pte_bad_query;

		break;

	case ptev_mwait:
		if (!ev->ip_suppressed && decoder->enabled &&
		    decoder->ip != ev->variant.mwait.ip)
			return -pte_bad_query;

		break;

	case ptev_pwre:
	case ptev_pwrx:
	case ptev_ptwrite:
	case ptev_tick:
	case ptev_cbr:
	case ptev_mnt:
		break;
	}

	/* Copy the event to the user.  Make sure we're not writing beyond the
	 * memory provided by the user.
	 *
	 * We might truncate details of an event but only for those events the
	 * user can't know about, anyway.
	 */
	if (sizeof(*ev) < size)
		size = sizeof(*ev);

	FUNC0(uevent, ev, size);

	/* This completes processing of the current event. */
	decoder->process_event = 0;

	/* If we just handled an instruction event, check for further events
	 * that bind to this instruction.
	 *
	 * If we don't have further events, proceed beyond the instruction so we
	 * can check for IP events, as well.
	 */
	if (decoder->process_insn) {
		status = FUNC1(decoder, &decoder->insn,
						  &decoder->iext);

		if (status != 0) {
			if (status < 0)
				return status;

			if (status & pts_event_pending)
				return status;
		}

		/* Proceed to the next instruction. */
		status = FUNC3(decoder);
		if (status < 0)
			return status;
	}

	/* Indicate further events that bind to the same IP. */
	return FUNC2(decoder, NULL, NULL);
}