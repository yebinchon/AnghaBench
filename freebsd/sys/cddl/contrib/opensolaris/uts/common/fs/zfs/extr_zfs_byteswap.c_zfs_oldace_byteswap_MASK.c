#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void* a_type; void* a_flags; void* a_access_mask; void* a_who; } ;
typedef  TYPE_1__ ace_t ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 void* FUNC1 (void*) ; 

void
FUNC2(ace_t *ace, int ace_cnt)
{
	int i;

	for (i = 0; i != ace_cnt; i++, ace++) {
		ace->a_who = FUNC1(ace->a_who);
		ace->a_access_mask = FUNC1(ace->a_access_mask);
		ace->a_flags = FUNC0(ace->a_flags);
		ace->a_type = FUNC0(ace->a_type);
	}
}