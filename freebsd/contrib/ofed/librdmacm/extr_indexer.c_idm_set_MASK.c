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
struct index_map {void*** array; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int IDX_MAX_INDEX ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (struct index_map*,int) ; 
 size_t FUNC1 (int) ; 
 size_t FUNC2 (int) ; 

int FUNC3(struct index_map *idm, int index, void *item)
{
	void **entry;

	if (index > IDX_MAX_INDEX) {
		errno = ENOMEM;
		return -1;
	}

	if (!idm->array[FUNC1(index)]) {
		if (FUNC0(idm, index) < 0)
			return -1;
	}

	entry = idm->array[FUNC1(index)];
	entry[FUNC2(index)] = item;
	return index;
}