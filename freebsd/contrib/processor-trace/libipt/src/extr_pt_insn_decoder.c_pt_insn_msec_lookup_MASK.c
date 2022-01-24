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
typedef  int /*<<< orphan*/  uint64_t ;
struct pt_msec_cache {int dummy; } ;
struct pt_mapped_section {int dummy; } ;
struct pt_insn_decoder {int /*<<< orphan*/  asid; int /*<<< orphan*/  ip; struct pt_image* image; struct pt_msec_cache scache; } ;
struct pt_image {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct pt_msec_cache*,struct pt_mapped_section const**,struct pt_image*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct pt_msec_cache*,struct pt_mapped_section const**,struct pt_image*,int /*<<< orphan*/ ) ; 
 int pte_internal ; 
 int pte_nomap ; 

__attribute__((used)) static int FUNC2(struct pt_insn_decoder *decoder,
			       const struct pt_mapped_section **pmsec)
{
	struct pt_msec_cache *scache;
	struct pt_image *image;
	uint64_t ip;
	int isid;

	if (!decoder || !pmsec)
		return -pte_internal;

	scache = &decoder->scache;
	image = decoder->image;
	ip = decoder->ip;

	isid = FUNC1(scache, pmsec, image, ip);
	if (isid < 0) {
		if (isid != -pte_nomap)
			return isid;

		return FUNC0(scache, pmsec, image,
					  &decoder->asid, ip);
	}

	return isid;
}