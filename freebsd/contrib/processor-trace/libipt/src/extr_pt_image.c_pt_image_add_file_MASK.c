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
struct pt_image {int dummy; } ;
struct pt_asid {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct pt_asid*,struct pt_asid const*) ; 
 int FUNC1 (struct pt_image*,struct pt_section*,struct pt_asid*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pt_section**,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct pt_section*) ; 
 int pte_invalid ; 

int FUNC4(struct pt_image *image, const char *filename,
		      uint64_t offset, uint64_t size,
		      const struct pt_asid *uasid, uint64_t vaddr)
{
	struct pt_section *section;
	struct pt_asid asid;
	int errcode;

	if (!image || !filename)
		return -pte_invalid;

	errcode = FUNC0(&asid, uasid);
	if (errcode < 0)
		return errcode;

	section = NULL;
	errcode = FUNC2(&section, filename, offset, size);
	if (errcode < 0)
		return errcode;

	errcode = FUNC1(image, section, &asid, vaddr, 0);
	if (errcode < 0) {
		(void) FUNC3(section);
		return errcode;
	}

	/* The image list got its own reference; let's drop ours. */
	errcode = FUNC3(section);
	if (errcode < 0)
		return errcode;

	return 0;
}