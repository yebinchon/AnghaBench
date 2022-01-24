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
struct pt_block_decoder {int process_event; int status; int /*<<< orphan*/  event; int /*<<< orphan*/  query; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int pte_internal ; 
 int pts_event_pending ; 

__attribute__((used)) static inline int FUNC1(struct pt_block_decoder *decoder)
{
	int status;

	if (!decoder)
		return -pte_internal;

	if (decoder->process_event)
		return 1;

	if (!(decoder->status & pts_event_pending))
		return 0;

	status = FUNC0(&decoder->query, &decoder->event,
			      sizeof(decoder->event));
	if (status < 0)
		return status;

	decoder->process_event = 1;
	decoder->status = status;

	return 1;
}