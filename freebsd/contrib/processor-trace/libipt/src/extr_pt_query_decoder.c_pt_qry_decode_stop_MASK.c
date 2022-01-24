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
struct pt_query_decoder {int /*<<< orphan*/  pos; struct pt_event* event; int /*<<< orphan*/  evq; } ;
struct pt_event {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 struct pt_event* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct pt_event*,struct pt_query_decoder*) ; 
 int pte_internal ; 
 int /*<<< orphan*/  ptev_stop ; 
 scalar_t__ ptps_stop ; 

int FUNC2(struct pt_query_decoder *decoder)
{
	struct pt_event *event;
	int errcode;

	if (!decoder)
		return -pte_internal;

	/* Stop events are reported immediately. */
	event = FUNC0(&decoder->evq);
	if (!event)
		return -pte_internal;

	event->type = ptev_stop;

	decoder->event = event;

	errcode = FUNC1(event, decoder);
	if (errcode < 0)
		return errcode;

	decoder->pos += ptps_stop;
	return 0;
}