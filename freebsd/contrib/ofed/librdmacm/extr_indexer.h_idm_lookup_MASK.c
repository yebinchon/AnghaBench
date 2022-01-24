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
struct index_map {scalar_t__* array; } ;

/* Variables and functions */
 int IDX_MAX_INDEX ; 
 void* FUNC0 (struct index_map*,int) ; 
 size_t FUNC1 (int) ; 

__attribute__((used)) static inline void *FUNC2(struct index_map *idm, int index)
{
	return ((index <= IDX_MAX_INDEX) && idm->array[FUNC1(index)]) ?
		FUNC0(idm, index) : NULL;
}