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
struct pt_iscache_lru_entry {int dummy; } ;
struct pt_image_section_cache {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct pt_image_section_cache*) ; 
 int FUNC1 (struct pt_image_section_cache*,struct pt_section*) ; 
 int FUNC2 (struct pt_iscache_lru_entry*) ; 
 int FUNC3 (struct pt_image_section_cache*,struct pt_iscache_lru_entry**) ; 
 int FUNC4 (struct pt_image_section_cache*) ; 

int FUNC5(struct pt_image_section_cache *iscache,
			  struct pt_section *section)
{
	struct pt_iscache_lru_entry *tail;
	int errcode, status;

	tail = NULL;

	errcode = FUNC0(iscache);
	if (errcode < 0)
		return errcode;

	status = FUNC1(iscache, section);
	if (status > 0)
		status = FUNC3(iscache, &tail);

	errcode = FUNC4(iscache);

	if (errcode < 0 || status < 0)
		return (status < 0) ? status : errcode;

	return FUNC2(tail);
}