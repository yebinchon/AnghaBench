#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pt_section {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * section; } ;
struct pt_msec_cache {TYPE_1__ msec; } ;

/* Variables and functions */
 struct pt_section* FUNC0 (TYPE_1__*) ; 
 int FUNC1 (struct pt_section*) ; 
 int FUNC2 (struct pt_section*) ; 
 int pte_internal ; 

int FUNC3(struct pt_msec_cache *cache)
{
	struct pt_section *section;
	int errcode;

	if (!cache)
		return -pte_internal;

	section = FUNC0(&cache->msec);
	if (!section)
		return 0;

	errcode = FUNC2(section);
	if (errcode < 0)
		return errcode;

	cache->msec.section = NULL;

	return FUNC1(section);
}