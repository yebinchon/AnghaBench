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
typedef  int vm_offset_t ;
typedef  int /*<<< orphan*/  u_int ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,size_t) ; 
 int /*<<< orphan*/  FUNC3 () ; 

int
FUNC4(vm_offset_t addr, size_t size, char *data)
{
	char *dst;
	size_t loop;

	dst = (char *)addr;
	if (FUNC1((u_int)dst)) {
		FUNC0("address %p is invalid\n", dst);
		return (0);
	}

	if (size == 4 && (addr & 3) == 0 && ((uintptr_t)data & 3) == 0)
		*((int*)dst) = *((int*)data);
	else
	if (size == 2 && (addr & 1) == 0 && ((uintptr_t)data & 1) == 0)
		*((short*)dst) = *((short*)data);
	else {
		loop = size;
		while (loop-- > 0) {
			if (FUNC1((u_int)dst)) {
				FUNC0("address %p is invalid\n", dst);
				return (-1);
			}
			*dst++ = *data++;
		}
	}

	/* make sure the caches and memory are in sync */
	FUNC2(addr, size);

	/* In case the current page tables have been modified ... */
	FUNC3();
	return (0);
}