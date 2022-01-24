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
struct pt_query_decoder {int pos; int /*<<< orphan*/  evq; struct pt_event* event; int /*<<< orphan*/  config; } ;
struct pt_packet_pip {int /*<<< orphan*/  nr; int /*<<< orphan*/  cr3; } ;
struct TYPE_5__ {int /*<<< orphan*/  non_root; int /*<<< orphan*/  cr3; } ;
struct TYPE_4__ {int /*<<< orphan*/  non_root; int /*<<< orphan*/  cr3; } ;
struct TYPE_6__ {TYPE_2__ async_paging; TYPE_1__ paging; } ;
struct pt_event {TYPE_3__ variant; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  evb_tip ; 
 struct pt_event* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct pt_event* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pt_event* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct pt_packet_pip*,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct pt_event*,struct pt_query_decoder*) ; 
 int pte_internal ; 
 int pte_nomem ; 
 int /*<<< orphan*/  ptev_async_branch ; 
 int /*<<< orphan*/  ptev_async_paging ; 
 int /*<<< orphan*/  ptev_paging ; 

int FUNC5(struct pt_query_decoder *decoder)
{
	struct pt_packet_pip packet;
	struct pt_event *event;
	int size, errcode;

	if (!decoder)
		return -pte_internal;

	size = FUNC3(&packet, decoder->pos, &decoder->config);
	if (size < 0)
		return size;

	/* Paging events are either standalone or bind to the same TIP packet
	 * as an in-flight async branch event.
	 */
	event = FUNC1(&decoder->evq, evb_tip, ptev_async_branch);
	if (!event) {
		event = FUNC2(&decoder->evq);
		if (!event)
			return -pte_internal;
		event->type = ptev_paging;
		event->variant.paging.cr3 = packet.cr3;
		event->variant.paging.non_root = packet.nr;

		decoder->event = event;
	} else {
		event = FUNC0(&decoder->evq, evb_tip);
		if (!event)
			return -pte_nomem;

		event->type = ptev_async_paging;
		event->variant.async_paging.cr3 = packet.cr3;
		event->variant.async_paging.non_root = packet.nr;
	}

	errcode = FUNC4(event, decoder);
	if (errcode < 0)
		return errcode;

	decoder->pos += size;
	return 0;
}