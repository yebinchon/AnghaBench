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
typedef  scalar_t__ uint16_t ;
struct pt_insn_ext {scalar_t__ isid; int /*<<< orphan*/  ip; int /*<<< orphan*/  iclass; int /*<<< orphan*/  size; int /*<<< orphan*/  raw; scalar_t__ truncated; int /*<<< orphan*/  mode; } ;
struct pt_insn {scalar_t__ isid; int /*<<< orphan*/  ip; int /*<<< orphan*/  iclass; int /*<<< orphan*/  size; int /*<<< orphan*/  raw; scalar_t__ truncated; int /*<<< orphan*/  mode; } ;
struct pt_block_decoder {int /*<<< orphan*/  asid; int /*<<< orphan*/  image; int /*<<< orphan*/  ip; int /*<<< orphan*/  mode; } ;
struct pt_block {int truncated; scalar_t__ isid; scalar_t__ ninsn; int /*<<< orphan*/  end_ip; int /*<<< orphan*/  iclass; int /*<<< orphan*/  size; int /*<<< orphan*/  raw; } ;
typedef  int /*<<< orphan*/  insn ;
typedef  int /*<<< orphan*/  iext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_insn_ext*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_block*) ; 
 int FUNC3 (struct pt_block_decoder*,struct pt_insn_ext*,struct pt_insn_ext*) ; 
 int FUNC4 (struct pt_insn_ext*,struct pt_insn_ext*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int pte_internal ; 

__attribute__((used)) static int FUNC5(struct pt_block_decoder *decoder,
				   struct pt_block *block,
				   struct pt_insn *pinsn,
				   struct pt_insn_ext *piext)
{
	struct pt_insn_ext iext;
	struct pt_insn insn;
	uint16_t ninsn;
	int status;

	if (!decoder || !block || !pinsn || !piext)
		return -pte_internal;

	/* There's nothing to do if there is no room in @block. */
	ninsn = block->ninsn + 1;
	if (!ninsn)
		return 0;

	/* The truncated instruction must be last. */
	if (block->truncated)
		return 0;

	FUNC1(&insn, 0, sizeof(insn));
	FUNC1(&iext, 0, sizeof(iext));

	insn.mode = decoder->mode;
	insn.ip = decoder->ip;

	status = FUNC4(&insn, &iext, decoder->image, &decoder->asid);
	if (status < 0)
		return status;

	/* We do not switch sections inside a block. */
	if (insn.isid != block->isid) {
		if (!FUNC2(block))
			return 0;

		block->isid = insn.isid;
	}

	/* If we couldn't read @insn's memory in one chunk from @insn.isid, we
	 * provide the memory in @block.
	 */
	if (insn.truncated) {
		FUNC0(block->raw, insn.raw, insn.size);
		block->size = insn.size;
		block->truncated = 1;
	}

	/* Log calls' return addresses for return compression. */
	status = FUNC3(decoder, &insn, &iext);
	if (status < 0)
		return status;

	/* We have a new instruction. */
	block->iclass = insn.iclass;
	block->end_ip = insn.ip;
	block->ninsn = ninsn;

	*pinsn = insn;
	*piext = iext;

	return 1;
}