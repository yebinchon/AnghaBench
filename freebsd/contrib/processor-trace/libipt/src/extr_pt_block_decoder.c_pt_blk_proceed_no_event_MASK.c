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
struct pt_section {int dummy; } ;
struct pt_mapped_section {int dummy; } ;
struct pt_block_decoder {int dummy; } ;
struct pt_block_cache {int dummy; } ;
struct pt_block {int isid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pt_block*) ; 
 int FUNC1 (struct pt_block_decoder*,struct pt_mapped_section const**) ; 
 int FUNC2 (struct pt_block_decoder*,struct pt_block*,struct pt_block_cache*,struct pt_mapped_section const*) ; 
 int FUNC3 (struct pt_block_decoder*,struct pt_block*) ; 
 struct pt_section* FUNC4 (struct pt_mapped_section const*) ; 
 struct pt_block_cache* FUNC5 (struct pt_section*) ; 
 int pte_internal ; 
 int pte_nomap ; 

__attribute__((used)) static int FUNC6(struct pt_block_decoder *decoder,
				   struct pt_block *block)
{
	const struct pt_mapped_section *msec;
	struct pt_block_cache *bcache;
	struct pt_section *section;
	int isid;

	if (!decoder || !block)
		return -pte_internal;

	isid = FUNC1(decoder, &msec);
	if (isid < 0) {
		if (isid != -pte_nomap)
			return isid;

		/* Even if there is no such section in the image, we may still
		 * read the memory via the callback function.
		 */
		return FUNC3(decoder, block);
	}

	/* We do not switch sections inside a block. */
	if (isid != block->isid) {
		if (!FUNC0(block))
			return 0;

		block->isid = isid;
	}

	section = FUNC4(msec);
	if (!section)
		return -pte_internal;

	bcache = FUNC5(section);
	if (!bcache)
		return FUNC3(decoder, block);

	return FUNC2(decoder, block, bcache, msec);
}