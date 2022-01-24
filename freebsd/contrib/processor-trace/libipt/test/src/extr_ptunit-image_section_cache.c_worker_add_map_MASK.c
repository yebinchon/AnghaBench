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
struct pt_section {int dummy; } ;
struct iscache_fixture {int /*<<< orphan*/  iscache; struct pt_section** section; } ;

/* Variables and functions */
 int num_iterations ; 
 int FUNC0 (int /*<<< orphan*/ *,struct pt_section*,int) ; 
 int FUNC1 (struct pt_section*) ; 
 int FUNC2 (struct pt_section*) ; 
 int pte_internal ; 

__attribute__((used)) static int FUNC3(void *arg)
{
	struct iscache_fixture *cfix;
	struct pt_section *section;
	int it;

	cfix = arg;
	if (!cfix)
		return -pte_internal;

	section = cfix->section[0];
	for (it = 0; it < num_iterations; ++it) {
		uint64_t laddr;
		int isid, errcode;

		laddr = (uint64_t) it << 3;

		isid = FUNC0(&cfix->iscache, section, laddr);
		if (isid < 0)
			return isid;

		errcode = FUNC1(section);
		if (errcode < 0)
			return errcode;

		errcode = FUNC2(section);
		if (errcode < 0)
			return errcode;
	}

	return 0;
}