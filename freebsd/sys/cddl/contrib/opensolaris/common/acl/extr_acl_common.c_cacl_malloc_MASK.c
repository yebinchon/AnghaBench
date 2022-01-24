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
 int /*<<< orphan*/  KM_SLEEP ; 
 void* FUNC0 (int,size_t) ; 
 int errno ; 
 void* FUNC1 (size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(void **ptr, size_t size)
{
#if defined(_KERNEL)
	*ptr = kmem_zalloc(size, KM_SLEEP);
	return (0);
#else
	*ptr = FUNC0(1, size);
	if (*ptr == NULL)
		return (errno);

	return (0);
#endif
}