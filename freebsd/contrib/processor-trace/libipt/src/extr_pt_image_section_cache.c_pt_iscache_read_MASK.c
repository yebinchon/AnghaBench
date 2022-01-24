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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct pt_section {int dummy; } ;
struct pt_image_section_cache {int dummy; } ;

/* Variables and functions */
 scalar_t__ UINT16_MAX ; 
 int FUNC0 (struct pt_image_section_cache*,struct pt_section**,scalar_t__*,int) ; 
 int FUNC1 (struct pt_section*) ; 
 int FUNC2 (struct pt_section*) ; 
 int FUNC3 (struct pt_section*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (struct pt_section*) ; 
 int pte_invalid ; 
 int pte_nomap ; 

int FUNC5(struct pt_image_section_cache *iscache, uint8_t *buffer,
		    uint64_t size, int isid, uint64_t vaddr)
{
	struct pt_section *section;
	uint64_t laddr;
	int errcode, status;

	if (!iscache || !buffer || !size)
		return -pte_invalid;

	errcode = FUNC0(iscache, &section, &laddr, isid);
	if (errcode < 0)
		return errcode;

	if (vaddr < laddr) {
		(void) FUNC2(section);
		return -pte_nomap;
	}

	vaddr -= laddr;

	errcode = FUNC1(section);
	if (errcode < 0) {
		(void) FUNC2(section);
		return errcode;
	}

	/* We truncate the read if it gets too big.  The user is expected to
	 * issue further reads for the remaining part.
	 */
	if (UINT16_MAX < size)
		size = UINT16_MAX;

	status = FUNC3(section, buffer, (uint16_t) size, vaddr);

	errcode = FUNC4(section);
	if (errcode < 0) {
		(void) FUNC2(section);
		return errcode;
	}

	errcode = FUNC2(section);
	if (errcode < 0)
		return errcode;

	return status;
}