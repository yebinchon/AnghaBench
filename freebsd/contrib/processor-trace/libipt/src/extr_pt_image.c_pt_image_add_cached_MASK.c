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
struct pt_section {int dummy; } ;
struct pt_image_section_cache {int dummy; } ;
struct pt_image {int dummy; } ;
struct pt_asid {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct pt_asid*,struct pt_asid const*) ; 
 int FUNC1 (struct pt_image*,struct pt_section*,struct pt_asid*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct pt_image_section_cache*,struct pt_section**,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (struct pt_section*) ; 
 int pte_invalid ; 

int FUNC4(struct pt_image *image,
			struct pt_image_section_cache *iscache, int isid,
			const struct pt_asid *uasid)
{
	struct pt_section *section;
	struct pt_asid asid;
	uint64_t vaddr;
	int errcode, status;

	if (!image || !iscache)
		return -pte_invalid;

	errcode = FUNC2(iscache, &section, &vaddr, isid);
	if (errcode < 0)
		return errcode;

	errcode = FUNC0(&asid, uasid);
	if (errcode < 0)
		return errcode;

	status = FUNC1(image, section, &asid, vaddr, isid);

	/* We grab a reference when we add the section.  Drop the one we
	 * obtained from cache lookup.
	 */
	errcode = FUNC3(section);
	if (errcode < 0)
		return errcode;

	return status;
}