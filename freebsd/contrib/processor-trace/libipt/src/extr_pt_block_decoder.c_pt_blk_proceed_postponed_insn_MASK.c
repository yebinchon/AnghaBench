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
struct pt_block_decoder {int /*<<< orphan*/  iext; int /*<<< orphan*/  insn; int /*<<< orphan*/  ip; int /*<<< orphan*/  enabled; int /*<<< orphan*/  process_insn; } ;

/* Variables and functions */
 int FUNC0 (struct pt_block_decoder*) ; 
 int FUNC1 (struct pt_block_decoder*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int pte_bad_query ; 
 int pte_internal ; 

__attribute__((used)) static int FUNC3(struct pt_block_decoder *decoder)
{
	int status;

	if (!decoder)
		return -pte_internal;

	/* There's nothing to do if we have no postponed instruction. */
	if (!decoder->process_insn)
		return 0;

	/* There's nothing to do if tracing got disabled. */
	if (!decoder->enabled)
		return FUNC0(decoder);

	status = FUNC2(&decoder->ip, &decoder->insn, &decoder->iext);
	if (status < 0) {
		if (status != -pte_bad_query)
			return status;

		status = FUNC1(decoder, &decoder->insn,
						   &decoder->iext);
		if (status < 0)
			return status;
	}

	return FUNC0(decoder);
}