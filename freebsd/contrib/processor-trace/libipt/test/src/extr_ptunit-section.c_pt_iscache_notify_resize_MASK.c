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
struct pt_section {int dummy; } ;
struct pt_image_section_cache {scalar_t__ map; } ;

/* Variables and functions */
 int FUNC0 (struct pt_section*) ; 
 int FUNC1 (struct pt_section*,scalar_t__*) ; 
 int pte_internal ; 

int FUNC2(struct pt_image_section_cache *iscache,
			     struct pt_section *section, uint64_t size)
{
	uint64_t memsize;
	int errcode;

	if (!iscache)
		return -pte_internal;

	if (iscache->map <= 0)
		return iscache->map;

	/* Avoid recursion. */
	iscache->map = 0;

	errcode = FUNC1(section, &memsize);
	if (errcode < 0)
		return errcode;

	if (size != memsize)
		return -pte_internal;

	return FUNC0(section);
}