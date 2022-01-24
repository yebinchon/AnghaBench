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
struct pt_block_decoder {int /*<<< orphan*/  ip; int /*<<< orphan*/  asid; int /*<<< orphan*/  image; int /*<<< orphan*/  scache; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct pt_mapped_section const**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct pt_section* FUNC1 (struct pt_mapped_section const*) ; 
 int FUNC2 (struct pt_section*) ; 
 int pte_internal ; 

__attribute__((used)) static int FUNC3(struct pt_block_decoder *decoder,
			    const struct pt_mapped_section **pmsec)
{
	const struct pt_mapped_section *msec;
	struct pt_section *section;
	int isid, errcode;

	if (!decoder || !pmsec)
		return -pte_internal;

	isid = FUNC0(&decoder->scache, &msec,  decoder->image,
				  &decoder->asid, decoder->ip);
	if (isid < 0)
		return isid;

	section = FUNC1(msec);
	if (!section)
		return -pte_internal;

	*pmsec = msec;

	errcode = FUNC2(section);
	if (errcode < 0)
		return errcode;

	return isid;
}