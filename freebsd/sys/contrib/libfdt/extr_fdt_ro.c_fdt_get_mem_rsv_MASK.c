#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_2__ {int /*<<< orphan*/  size; int /*<<< orphan*/  address; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (void const*,int) ; 

int FUNC3(const void *fdt, int n, uint64_t *address, uint64_t *size)
{
	FUNC0(fdt);
	*address = FUNC1(FUNC2(fdt, n)->address);
	*size = FUNC1(FUNC2(fdt, n)->size);
	return 0;
}