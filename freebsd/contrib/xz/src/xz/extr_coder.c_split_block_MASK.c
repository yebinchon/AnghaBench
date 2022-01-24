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
typedef  scalar_t__ uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 scalar_t__* opt_block_list ; 
 scalar_t__ opt_block_size ; 

__attribute__((used)) static void
FUNC2(uint64_t *block_remaining,
	    uint64_t *next_block_remaining,
	    size_t *list_pos)
{
	if (*next_block_remaining > 0) {
		// The Block at *list_pos has previously been split up.
		FUNC0(FUNC1() == 1);
		FUNC0(opt_block_size > 0);
		FUNC0(opt_block_list != NULL);

		if (*next_block_remaining > opt_block_size) {
			// We have to split the current Block at *list_pos
			// into another opt_block_size length Block.
			*block_remaining = opt_block_size;
		} else {
			// This is the last remaining split Block for the
			// Block at *list_pos.
			*block_remaining = *next_block_remaining;
		}

		*next_block_remaining -= *block_remaining;

	} else {
		// The Block at *list_pos has been finished. Go to the next
		// entry in the list. If the end of the list has been reached,
		// reuse the size of the last Block.
		if (opt_block_list[*list_pos + 1] != 0)
			++*list_pos;

		*block_remaining = opt_block_list[*list_pos];

		// If in single-threaded mode, split up the Block if needed.
		// This is not needed in multi-threaded mode because liblzma
		// will do this due to how threaded encoding works.
		if (FUNC1() == 1 && opt_block_size > 0
				&& *block_remaining > opt_block_size) {
			*next_block_remaining
					= *block_remaining - opt_block_size;
			*block_remaining = opt_block_size;
		}
	}
}