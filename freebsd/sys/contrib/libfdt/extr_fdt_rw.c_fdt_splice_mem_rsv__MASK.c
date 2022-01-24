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
struct fdt_reserve_entry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (void*,scalar_t__) ; 
 int FUNC4 (void*,struct fdt_reserve_entry*,int,int) ; 

__attribute__((used)) static int FUNC5(void *fdt, struct fdt_reserve_entry *p,
			       int oldn, int newn)
{
	int delta = (newn - oldn) * sizeof(*p);
	int err;
	err = FUNC4(fdt, p, oldn * sizeof(*p), newn * sizeof(*p));
	if (err)
		return err;
	FUNC3(fdt, FUNC1(fdt) + delta);
	FUNC2(fdt, FUNC0(fdt) + delta);
	return 0;
}