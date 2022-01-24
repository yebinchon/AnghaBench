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
struct fdt_header {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (void const*) ; 
 scalar_t__ FUNC2 (void const*) ; 
 scalar_t__ FUNC3 (void const*) ; 
 scalar_t__ FUNC4 (void const*) ; 
 scalar_t__ FUNC5 (void const*) ; 

__attribute__((used)) static int FUNC6(const void *fdt,
				  int mem_rsv_size, int struct_size)
{
	return (FUNC3(fdt) < FUNC0(sizeof(struct fdt_header), 8))
		|| (FUNC2(fdt) <
		    (FUNC3(fdt) + mem_rsv_size))
		|| (FUNC1(fdt) <
		    (FUNC2(fdt) + struct_size))
		|| (FUNC5(fdt) <
		    (FUNC1(fdt) + FUNC4(fdt)));
}