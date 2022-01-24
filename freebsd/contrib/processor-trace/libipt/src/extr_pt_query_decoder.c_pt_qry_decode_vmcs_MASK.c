#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pt_query_decoder {int pos; struct pt_event* event; int /*<<< orphan*/  evq; int /*<<< orphan*/  config; } ;
struct pt_packet_vmcs {int /*<<< orphan*/  base; } ;
struct TYPE_5__ {int /*<<< orphan*/  base; } ;
struct TYPE_4__ {int /*<<< orphan*/  base; } ;
struct TYPE_6__ {TYPE_2__ vmcs; TYPE_1__ async_vmcs; } ;
struct pt_event {TYPE_3__ variant; void* type; } ;

/* Variables and functions */
 int /*<<< orphan*/  evb_tip ; 
 struct pt_event* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct pt_event* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pt_event* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct pt_packet_vmcs*,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct pt_event*,struct pt_query_decoder*) ; 
 int pte_internal ; 
 int pte_nomem ; 
 int /*<<< orphan*/  ptev_async_branch ; 
 int /*<<< orphan*/  ptev_async_paging ; 
 void* ptev_async_vmcs ; 
 void* ptev_vmcs ; 

int FUNC5(struct pt_query_decoder *decoder)
{
	struct pt_packet_vmcs packet;
	struct pt_event *event;
	int size, errcode;

	if (!decoder)
		return -pte_internal;

	size = FUNC3(&packet, decoder->pos, &decoder->config);
	if (size < 0)
		return size;

	/* VMCS events bind to the same IP as an in-flight async paging event.
	 *
	 * In that case, the VMCS event should be applied first.  We reorder
	 * events here to simplify the life of higher layers.
	 */
	event = FUNC1(&decoder->evq, evb_tip, ptev_async_paging);
	if (event) {
		struct pt_event *paging;

		paging = FUNC0(&decoder->evq, evb_tip);
		if (!paging)
			return -pte_nomem;

		*paging = *event;

		event->type = ptev_async_vmcs;
		event->variant.async_vmcs.base = packet.base;

		decoder->pos += size;
		return 0;
	}

	/* VMCS events bind to the same TIP packet as an in-flight async
	 * branch event.
	 */
	event = FUNC1(&decoder->evq, evb_tip, ptev_async_branch);
	if (event) {
		event = FUNC0(&decoder->evq, evb_tip);
		if (!event)
			return -pte_nomem;

		event->type = ptev_async_vmcs;
		event->variant.async_vmcs.base = packet.base;

		decoder->pos += size;
		return 0;
	}

	/* VMCS events that do not bind to an in-flight async event are
	 * stand-alone.
	 */
	event = FUNC2(&decoder->evq);
	if (!event)
		return -pte_internal;

	event->type = ptev_vmcs;
	event->variant.vmcs.base = packet.base;

	decoder->event = event;

	errcode = FUNC4(event, decoder);
	if (errcode < 0)
		return errcode;

	decoder->pos += size;
	return 0;
}