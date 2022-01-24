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
struct pt_mapped_section {int dummy; } ;
struct pt_block_decoder {int /*<<< orphan*/  ip; int /*<<< orphan*/  image; int /*<<< orphan*/  scache; } ;

/* Variables and functions */
 int FUNC0 (struct pt_block_decoder*,struct pt_mapped_section const**) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct pt_mapped_section const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int pte_internal ; 
 int pte_nomap ; 

__attribute__((used)) static inline int FUNC2(struct pt_block_decoder *decoder,
				     const struct pt_mapped_section **pmsec)
{
	int isid;

	if (!decoder)
		return -pte_internal;

	isid = FUNC1(&decoder->scache, pmsec, decoder->image,
				  decoder->ip);
	if (isid < 0) {
		if (isid != -pte_nomap)
			return isid;

		return FUNC0(decoder, pmsec);
	}

	return isid;
}