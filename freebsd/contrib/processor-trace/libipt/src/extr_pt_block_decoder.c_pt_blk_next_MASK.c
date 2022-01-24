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
struct pt_block_decoder {scalar_t__ speculative; int /*<<< orphan*/  mode; int /*<<< orphan*/  ip; } ;
struct pt_block {int speculative; int /*<<< orphan*/  mode; int /*<<< orphan*/  ip; } ;
typedef  int /*<<< orphan*/  block ;

/* Variables and functions */
 int FUNC0 (struct pt_block*,size_t,struct pt_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_block*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct pt_block_decoder*,struct pt_block*) ; 
 int pte_invalid ; 

int FUNC3(struct pt_block_decoder *decoder, struct pt_block *ublock,
		size_t size)
{
	struct pt_block block, *pblock;
	int errcode, status;

	if (!decoder || !ublock)
		return -pte_invalid;

	pblock = size == sizeof(block) ? ublock : &block;

	/* Zero-initialize the block in case of error returns. */
	FUNC1(pblock, 0, sizeof(*pblock));

	/* Fill in a few things from the current decode state.
	 *
	 * This reflects the state of the last pt_blk_next() or pt_blk_start()
	 * call.  Note that, unless we stop with tracing disabled, we proceed
	 * already to the start IP of the next block.
	 *
	 * Some of the state may later be overwritten as we process events.
	 */
	pblock->ip = decoder->ip;
	pblock->mode = decoder->mode;
	if (decoder->speculative)
		pblock->speculative = 1;

	/* Proceed one block. */
	status = FUNC2(decoder, pblock);

	errcode = FUNC0(ublock, size, pblock);
	if (errcode < 0)
		return errcode;

	return status;
}