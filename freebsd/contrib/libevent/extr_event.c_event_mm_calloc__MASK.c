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
 int /*<<< orphan*/  ENOMEM ; 
 size_t EV_SIZE_MAX ; 
 void* FUNC0 (size_t,size_t) ; 
 int /*<<< orphan*/  errno ; 
 void* FUNC1 (void*,int /*<<< orphan*/ ,size_t) ; 
 void* FUNC2 (size_t) ; 

void *
FUNC3(size_t count, size_t size)
{
	if (count == 0 || size == 0)
		return NULL;

	if (&mm_malloc_fn_) {
		size_t sz = count * size;
		void *p = NULL;
		if (count > EV_SIZE_MAX / size)
			goto error;
		p = FUNC2(sz);
		if (p)
			return FUNC1(p, 0, sz);
	} else {
		void *p = FUNC0(count, size);
#ifdef _WIN32
		/* Windows calloc doesn't reliably set ENOMEM */
		if (p == NULL)
			goto error;
#endif
		return p;
	}

error:
	errno = ENOMEM;
	return NULL;
}