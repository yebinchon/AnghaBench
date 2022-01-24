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
struct pt_image_section_cache {scalar_t__ map; } ;

/* Variables and functions */
 int FUNC0 (struct pt_section*) ; 
 int pte_internal ; 

int FUNC1(struct pt_image_section_cache *iscache,
			  struct pt_section *section)
{
	if (!iscache)
		return -pte_internal;

	if (iscache->map <= 0)
		return iscache->map;

	/* Avoid recursion. */
	iscache->map = 0;

	return FUNC0(section);
}