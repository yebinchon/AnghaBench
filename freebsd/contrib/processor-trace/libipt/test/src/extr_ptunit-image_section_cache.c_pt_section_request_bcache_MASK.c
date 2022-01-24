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
typedef  int uint64_t ;
struct pt_section {int bcsize; int size; struct pt_image_section_cache* iscache; } ;
struct pt_image_section_cache {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct pt_image_section_cache*,struct pt_section*,int) ; 
 int FUNC1 (struct pt_section*) ; 
 int FUNC2 (struct pt_section*) ; 
 int FUNC3 (struct pt_section*) ; 
 int FUNC4 (struct pt_section*) ; 
 int pte_internal ; 

int FUNC5(struct pt_section *section)
{
	struct pt_image_section_cache *iscache;
	uint64_t memsize;
	int errcode;

	if (!section)
		return -pte_internal;

	errcode = FUNC2(section);
	if (errcode < 0)
		return errcode;

	errcode = FUNC1(section);
	if (errcode < 0)
		goto out_alock;

	if (section->bcsize)
		goto out_lock;

	section->bcsize = section->size * 3;
	memsize = section->size + section->bcsize;

	errcode = FUNC3(section);
	if (errcode < 0)
		goto out_alock;

	iscache = section->iscache;
	if (iscache) {
		errcode = FUNC0(iscache, section, memsize);
		if (errcode < 0)
			goto out_alock;
	}

	return FUNC4(section);


out_lock:
	(void) FUNC3(section);

out_alock:
	(void) FUNC4(section);
	return errcode;
}