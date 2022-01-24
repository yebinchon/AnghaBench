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
struct pt_section {struct pt_image_section_cache* iscache; } ;
struct pt_image_section_cache {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct pt_image_section_cache*,struct pt_section*) ; 
 int FUNC1 (struct pt_section*) ; 
 int FUNC2 (struct pt_section*) ; 
 int FUNC3 (struct pt_section*) ; 
 int pte_internal ; 

int FUNC4(struct pt_section *section)
{
	struct pt_image_section_cache *iscache;
	int errcode, status;

	if (!section)
		return -pte_internal;

	errcode = FUNC2(section);
	if (errcode < 0)
		return errcode;

	errcode = FUNC1(section);
	if (errcode < 0)
		return errcode;

	status = 0;
	iscache = section->iscache;
	if (iscache)
		status = FUNC0(iscache, section);

	errcode = FUNC3(section);

	return (status < 0) ? status : errcode;
}