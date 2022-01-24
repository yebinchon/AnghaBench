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
typedef  int /*<<< orphan*/  uint64_t ;
struct pt_query_decoder {int /*<<< orphan*/  time; int /*<<< orphan*/  last_time; int /*<<< orphan*/  ip; int /*<<< orphan*/ * event; int /*<<< orphan*/  tnt; struct pt_decoder_function* next; } ;
struct pt_decoder_function {int (* decode ) (struct pt_query_decoder*) ;int flags; } ;

/* Variables and functions */
 int pdff_tip ; 
 int pdff_tnt ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct pt_query_decoder*) ; 
 int FUNC2 (struct pt_query_decoder*) ; 
 int FUNC3 (struct pt_query_decoder*) ; 
 scalar_t__ FUNC4 (struct pt_query_decoder*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int pte_bad_query ; 
 int pte_eos ; 
 int pte_event_ignored ; 
 int pte_internal ; 
 int pte_invalid ; 
 int pts_ip_suppressed ; 
 int FUNC6 (struct pt_query_decoder*) ; 

int FUNC7(struct pt_query_decoder *decoder, uint64_t *addr)
{
	int errcode, flags;

	if (!decoder || !addr)
		return -pte_invalid;

	flags = 0;
	for (;;) {
		const struct pt_decoder_function *dfun;

		dfun = decoder->next;
		if (!dfun)
			return FUNC1(decoder);

		if (!dfun->decode)
			return -pte_internal;

		/* There's an event ahead of us. */
		if (FUNC4(decoder))
			return -pte_bad_query;

		/* Clear the decoder's current event so we know when we
		 * accidentally skipped an event.
		 */
		decoder->event = NULL;

		/* We may see a single TNT packet if the current tnt is empty.
		 *
		 * If we see a TNT while the current tnt is not empty, it means
		 * that our user got out of sync. Let's report no data and hope
		 * that our user is able to re-sync.
		 */
		if ((dfun->flags & pdff_tnt) &&
		    !FUNC5(&decoder->tnt))
			return -pte_bad_query;

		/* Apply the decoder function. */
		errcode = dfun->decode(decoder);
		if (errcode)
			return errcode;

		/* If we skipped an event, we're in trouble. */
		if (decoder->event)
			return -pte_event_ignored;

		/* We're done when we found a TIP packet that isn't part of an
		 * event.
		 */
		if (dfun->flags & pdff_tip) {
			uint64_t ip;

			/* We already decoded it, so the branch destination
			 * is stored in the decoder's last ip.
			 */
			errcode = FUNC0(&ip, &decoder->ip);
			if (errcode < 0)
				flags |= pts_ip_suppressed;
			else
				*addr = ip;

			break;
		}

		/* Read ahead until the next query-relevant packet. */
		errcode = FUNC2(decoder);
		if (errcode)
			return errcode;
	}

	/* Preserve the time at the TIP packet. */
	decoder->last_time = decoder->time;

	/* Read ahead until the next query-relevant packet. */
	errcode = FUNC2(decoder);
	if ((errcode < 0) && (errcode != -pte_eos))
		return errcode;

	flags |= FUNC3(decoder);

	return flags;
}