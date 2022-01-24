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
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 size_t MALLOC_PAGESIZE ; 
 size_t MUL_NO_OVERFLOW ; 
 size_t SIZE_MAX ; 
 void* FUNC0 (size_t,size_t) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,size_t) ; 

void *
FUNC5(void *ptr, size_t oldnmemb, size_t newnmemb, size_t size)
{
	size_t oldsize, newsize;
	void *newptr;

	if (ptr == NULL)
		return FUNC0(newnmemb, size);

	if ((newnmemb >= MUL_NO_OVERFLOW || size >= MUL_NO_OVERFLOW) &&
	    newnmemb > 0 && SIZE_MAX / newnmemb < size) {
		errno = ENOMEM;
		return NULL;
	}
	newsize = newnmemb * size;

	if ((oldnmemb >= MUL_NO_OVERFLOW || size >= MUL_NO_OVERFLOW) &&
	    oldnmemb > 0 && SIZE_MAX / oldnmemb < size) {
		errno = EINVAL;
		return NULL;
	}
	oldsize = oldnmemb * size;

	/*
	 * Don't bother too much if we're shrinking just a bit,
	 * we do not shrink for series of small steps, oh well.
	 */
	if (newsize <= oldsize) {
		size_t d = oldsize - newsize;

		if (d < oldsize / 2 && d < MALLOC_PAGESIZE) {
			FUNC4((char *)ptr + newsize, 0, d);
			return ptr;
		}
	}

	newptr = FUNC2(newsize);
	if (newptr == NULL)
		return NULL;

	if (newsize > oldsize) {
		FUNC3(newptr, ptr, oldsize);
		FUNC4((char *)newptr + oldsize, 0, newsize - oldsize);
	} else
		FUNC3(newptr, ptr, newsize);

	/*
	 * At this point, the OpenBSD implementation calls
	 * explicit_bzero() on the old memory before it is
	 * freed.  Since explicit_bzero() is hard to implement
	 * portably and we don't handle confidential data in
	 * mandoc in the first place, simply free the memory
	 * without clearing it.
	 */

	FUNC1(ptr);

	return newptr;
}