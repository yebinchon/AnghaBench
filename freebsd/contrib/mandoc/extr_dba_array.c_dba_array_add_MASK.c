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
struct dba_array {int eu; int ea; int flags; void* em; void* ep; } ;

/* Variables and functions */
 int DBA_GROW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct dba_array*,int,void*) ; 
 void* FUNC2 (void*,int,int) ; 

void
FUNC3(struct dba_array *array, void *entry)
{
	if (array->eu == array->ea) {
		FUNC0(array->flags & DBA_GROW);
		array->ep = FUNC2(array->ep,
		    2, sizeof(*array->ep) * array->ea);
		array->em = FUNC2(array->em,
		    2, sizeof(*array->em) * array->ea);
		array->ea *= 2;
	}
	FUNC1(array, array->eu, entry);
}