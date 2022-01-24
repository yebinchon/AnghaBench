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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (void*,size_t) ; 

void *
FUNC2(void *ptr, size_t size)
{
	void *nptr;

	nptr = FUNC1(ptr, size);

	/*
	 * When the System V compatibility option (malloc "V" flag) is
	 * in effect, realloc(ptr, 0) frees the memory and returns NULL.
	 * So, to avoid double free, call free() only when size != 0.
	 * realloc(ptr, 0) can't fail when ptr != NULL.
	 */
	if (!nptr && ptr && size != 0)
		FUNC0(ptr);
	return (nptr);
}