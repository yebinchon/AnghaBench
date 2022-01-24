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
typedef  size_t uint16_t ;
struct pt_section {int dummy; } ;
struct pt_iscache_entry {int /*<<< orphan*/  laddr; struct pt_section* section; } ;
struct pt_image_section_cache {size_t size; struct pt_iscache_entry* entries; } ;

/* Variables and functions */
 int UINT16_MAX ; 
 int FUNC0 (struct pt_image_section_cache*) ; 
 int FUNC1 (struct pt_image_section_cache*) ; 
 int FUNC2 (struct pt_section*) ; 
 int pte_bad_image ; 
 int pte_internal ; 

int FUNC3(struct pt_image_section_cache *iscache,
		      struct pt_section **section, uint64_t *laddr, int isid)
{
	uint16_t index;
	int errcode, status;

	if (!iscache || !section || !laddr)
		return -pte_internal;

	if (isid <= 0)
		return -pte_bad_image;

	isid -= 1;
	if (isid > UINT16_MAX)
		return -pte_internal;

	index = (uint16_t) isid;

	errcode = FUNC0(iscache);
	if (errcode < 0)
		return errcode;

	if (iscache->size <= index)
		status = -pte_bad_image;
	else {
		const struct pt_iscache_entry *entry;

		entry = &iscache->entries[index];
		*section = entry->section;
		*laddr = entry->laddr;

		status = FUNC2(*section);
	}

	errcode = FUNC1(iscache);
	if (errcode < 0)
		return errcode;

	return status;
}