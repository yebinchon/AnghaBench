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
struct pt_image_section_cache {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct pt_image_section_cache*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct pt_image_section_cache*) ; 
 int FUNC2 (struct pt_image_section_cache*) ; 

int FUNC3(struct pt_image_section_cache *iscache,
		    const char *filename, uint64_t offset, uint64_t size,
		    uint64_t laddr)
{
	int errcode, isid;

	errcode = FUNC1(iscache);
	if (errcode < 0)
		return errcode;

	isid = FUNC0(iscache, filename, offset, size, laddr);

	errcode = FUNC2(iscache);
	if (errcode < 0)
		return errcode;

	return isid;
}