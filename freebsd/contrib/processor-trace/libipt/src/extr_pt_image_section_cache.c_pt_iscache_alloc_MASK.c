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
struct pt_image_section_cache {int dummy; } ;

/* Variables and functions */
 struct pt_image_section_cache* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_image_section_cache*,char const*) ; 

struct pt_image_section_cache *FUNC2(const char *name)
{
	struct pt_image_section_cache *iscache;

	iscache = FUNC0(sizeof(*iscache));
	if (iscache)
		FUNC1(iscache, name);

	return iscache;
}