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
 size_t FUNC0 (int) ; 
 size_t FUNC1 (int) ; 

void *FUNC2(struct index_map *idm, int index)
{
	void **entry;
	void *item;

	entry = idm->array[FUNC0(index)];
	item = entry[FUNC1(index)];
	entry[FUNC1(index)] = NULL;
	return item;
}