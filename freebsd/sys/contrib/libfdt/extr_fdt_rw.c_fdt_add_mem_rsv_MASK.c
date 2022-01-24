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
typedef  int /*<<< orphan*/  uint64_t ;
struct fdt_reserve_entry {void* size; void* address; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 struct fdt_reserve_entry* FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int FUNC4 (void*,struct fdt_reserve_entry*,int /*<<< orphan*/ ,int) ; 

int FUNC5(void *fdt, uint64_t address, uint64_t size)
{
	struct fdt_reserve_entry *re;
	int err;

	FUNC0(fdt);

	re = FUNC2(fdt, FUNC3(fdt));
	err = FUNC4(fdt, re, 0, 1);
	if (err)
		return err;

	re->address = FUNC1(address);
	re->size = FUNC1(size);
	return 0;
}