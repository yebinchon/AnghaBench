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
struct dba_array {size_t eu; int* em; int /*<<< orphan*/  pos; } ;
typedef  size_t int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 

void
FUNC2(struct dba_array *array)
{
	int32_t	 ie;

	array->pos = FUNC1();
	for (ie = 0; ie < array->eu; ie++)
		if (array->em[ie] != -1)
			FUNC0(array->em[ie]);
}