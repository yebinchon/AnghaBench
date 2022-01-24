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
struct pt_query_decoder {int /*<<< orphan*/  tnt; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pt_query_decoder const*) ; 
 scalar_t__ FUNC1 (struct pt_query_decoder const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int pte_internal ; 
 int pts_eos ; 
 int pts_event_pending ; 

__attribute__((used)) static int FUNC3(const struct pt_query_decoder *decoder)
{
	int flags = 0;

	if (!decoder)
		return -pte_internal;

	/* Some packets force out TNT and any deferred TIPs in order to
	 * establish the correct context for the subsequent packet.
	 *
	 * Users are expected to first navigate to the correct code region
	 * by using up the cached TNT bits before interpreting any subsequent
	 * packets.
	 *
	 * We do need to read ahead in order to signal upcoming events.  We may
	 * have already decoded those packets while our user has not navigated
	 * to the correct code region, yet.
	 *
	 * In order to have our user use up the cached TNT bits first, we do
	 * not indicate the next event until the TNT cache is empty.
	 */
	if (FUNC2(&decoder->tnt)) {
		if (FUNC1(decoder))
			flags |= pts_event_pending;

		if (FUNC0(decoder))
			flags |= pts_eos;
	}

	return flags;
}