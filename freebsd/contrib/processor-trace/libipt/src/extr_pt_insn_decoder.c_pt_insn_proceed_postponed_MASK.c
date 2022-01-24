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
struct pt_insn_decoder {int /*<<< orphan*/  iext; int /*<<< orphan*/  insn; int /*<<< orphan*/  enabled; int /*<<< orphan*/  process_insn; } ;

/* Variables and functions */
 int FUNC0 (struct pt_insn_decoder*) ; 
 int FUNC1 (struct pt_insn_decoder*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int pte_internal ; 

__attribute__((used)) static int FUNC2(struct pt_insn_decoder *decoder)
{
	int status;

	if (!decoder)
		return -pte_internal;

	if (!decoder->process_insn)
		return -pte_internal;

	/* There's nothing to do if tracing got disabled. */
	if (!decoder->enabled)
		return FUNC0(decoder);

	status = FUNC1(decoder, &decoder->insn, &decoder->iext);
	if (status < 0)
		return status;

	return FUNC0(decoder);
}