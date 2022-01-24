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
struct pt_query_decoder {struct pt_event* event; scalar_t__ enabled; int /*<<< orphan*/  evq; } ;
struct pt_event {int ip_suppressed; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 struct pt_event* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct pt_event*,struct pt_query_decoder*) ; 
 int pte_internal ; 
 int /*<<< orphan*/  ptev_overflow ; 

__attribute__((used)) static int FUNC2(struct pt_query_decoder *decoder)
{
	struct pt_event *ev;

	if (!decoder)
		return -pte_internal;

	ev = FUNC0(&decoder->evq);
	if (!ev)
		return -pte_internal;

	ev->type = ptev_overflow;

	/* We suppress the IP to indicate that tracing has been disabled before
	 * the overflow resolved.  There can be several events before tracing is
	 * enabled again.
	 */
	ev->ip_suppressed = 1;

	decoder->enabled = 0;
	decoder->event = ev;

	return FUNC1(ev, decoder);
}