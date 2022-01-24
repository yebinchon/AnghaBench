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
struct pt_iscache_lru_entry {int dummy; } ;
struct pt_image_section_cache {scalar_t__ used; scalar_t__ limit; } ;

/* Variables and functions */
 int FUNC0 (struct pt_image_section_cache*) ; 
 int FUNC1 (struct pt_iscache_lru_entry*) ; 
 int FUNC2 (struct pt_image_section_cache*,struct pt_iscache_lru_entry**) ; 
 int FUNC3 (struct pt_image_section_cache*) ; 
 int pte_invalid ; 

int FUNC4(struct pt_image_section_cache *iscache, uint64_t limit)
{
	struct pt_iscache_lru_entry *tail;
	int errcode, status;

	if (!iscache)
		return -pte_invalid;

	status = 0;
	tail = NULL;

	errcode = FUNC0(iscache);
	if (errcode < 0)
		return errcode;

	iscache->limit = limit;
	if (limit < iscache->used)
		status = FUNC2(iscache, &tail);

	errcode = FUNC3(iscache);

	if (errcode < 0 || status < 0)
		return (status < 0) ? status : errcode;

	return FUNC1(tail);
}