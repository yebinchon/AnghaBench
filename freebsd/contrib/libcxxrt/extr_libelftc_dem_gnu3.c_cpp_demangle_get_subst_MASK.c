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
struct TYPE_2__ {size_t size; int /*<<< orphan*/ * container; } ;
struct cpp_demangle_data {int /*<<< orphan*/  cur; TYPE_1__ subst; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cpp_demangle_data*,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct cpp_demangle_data *ddata, size_t idx)
{
	size_t len;

	if (ddata == NULL || ddata->subst.size <= idx)
		return (0);
	if ((len = FUNC1(ddata->subst.container[idx])) == 0)
		return (0);
	if (!FUNC0(ddata, ddata->subst.container[idx], len))
		return (0);

	/* skip '_' */
	++ddata->cur;

	return (1);
}