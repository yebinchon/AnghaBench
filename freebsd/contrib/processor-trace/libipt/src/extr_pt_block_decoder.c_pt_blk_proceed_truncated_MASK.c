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
struct pt_insn_ext {int /*<<< orphan*/  size; int /*<<< orphan*/  iclass; int /*<<< orphan*/  raw; int /*<<< orphan*/  truncated; int /*<<< orphan*/  ip; int /*<<< orphan*/  mode; } ;
struct pt_insn {int /*<<< orphan*/  size; int /*<<< orphan*/  iclass; int /*<<< orphan*/  raw; int /*<<< orphan*/  truncated; int /*<<< orphan*/  ip; int /*<<< orphan*/  mode; } ;
struct pt_block_decoder {int /*<<< orphan*/  ip; int /*<<< orphan*/  asid; int /*<<< orphan*/  image; int /*<<< orphan*/  mode; } ;
struct pt_block {int truncated; int /*<<< orphan*/  size; int /*<<< orphan*/  iclass; int /*<<< orphan*/  raw; } ;
typedef  int /*<<< orphan*/  insn ;
typedef  int /*<<< orphan*/  iext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_insn_ext*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct pt_block_decoder*,struct pt_insn_ext*,struct pt_insn_ext*) ; 
 int FUNC3 (struct pt_block_decoder*,struct pt_insn_ext*,struct pt_insn_ext*) ; 
 int FUNC4 (struct pt_insn_ext*,struct pt_insn_ext*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct pt_insn_ext*,struct pt_insn_ext*) ; 
 int pte_bad_query ; 
 int pte_internal ; 

__attribute__((used)) static int FUNC6(struct pt_block_decoder *decoder,
				    struct pt_block *block)
{
	struct pt_insn_ext iext;
	struct pt_insn insn;
	int errcode;

	if (!decoder || !block)
		return -pte_internal;

	FUNC1(&iext, 0, sizeof(iext));
	FUNC1(&insn, 0, sizeof(insn));

	insn.mode = decoder->mode;
	insn.ip = decoder->ip;

	errcode = FUNC4(&insn, &iext, decoder->image, &decoder->asid);
	if (errcode < 0)
		return errcode;

	/* We shouldn't use this function if the instruction isn't truncated. */
	if (!insn.truncated)
		return -pte_internal;

	/* Provide the instruction in the block.  This ends the block. */
	FUNC0(block->raw, insn.raw, insn.size);
	block->iclass = insn.iclass;
	block->size = insn.size;
	block->truncated = 1;

	/* Log calls' return addresses for return compression. */
	errcode = FUNC2(decoder, &insn, &iext);
	if (errcode < 0)
		return errcode;

	/* Let's see if we can proceed to the next IP without trace.
	 *
	 * The truncated instruction ends the block but we still need to get the
	 * next block's start IP.
	 */
	errcode = FUNC5(&decoder->ip, &insn, &iext);
	if (errcode < 0) {
		if (errcode != -pte_bad_query)
			return errcode;

		return FUNC3(decoder, &insn, &iext);
	}

	return 0;
}