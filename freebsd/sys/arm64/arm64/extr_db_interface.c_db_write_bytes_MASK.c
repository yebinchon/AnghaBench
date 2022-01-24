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
typedef  int /*<<< orphan*/  vm_size_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  void* jmp_buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ish ; 
 void* FUNC3 (void*) ; 
 int FUNC4 (void*) ; 

int
FUNC5(vm_offset_t addr, size_t size, char *data)
{
	jmp_buf jb;
	void *prev_jb;
	char *dst;
	int ret;

	prev_jb = FUNC3(jb);
	ret = FUNC4(jb);
	if (ret == 0) {
		dst = (char *)addr;
		while (size-- > 0)
			*dst++ = *data++;

		FUNC2(ish);

		/* Clean D-cache and invalidate I-cache */
		FUNC0(addr, (vm_size_t)size);
		FUNC1(addr, (vm_size_t)size);
	}
	(void)FUNC3(prev_jb);

	return (ret);
}