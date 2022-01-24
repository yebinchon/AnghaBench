#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int nvp_size; } ;
typedef  TYPE_1__ nvpair_t ;
typedef  int /*<<< orphan*/  data_type_t ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(nvpair_t *nvp)
{
	data_type_t type = FUNC1(nvp);
	int size1, size2;

	/* verify nvp_name_sz, check the name string length */
	if (FUNC6(nvp) != 0)
		return (EFAULT);

	if (FUNC7(type, FUNC0(nvp), FUNC3(nvp)) != 0)
		return (EFAULT);

	/*
	 * verify nvp_type, nvp_value_elem, and also possibly
	 * verify string values and get the value size.
	 */
	size2 = FUNC5(type, FUNC3(nvp), FUNC0(nvp));
	size1 = nvp->nvp_size - FUNC2(nvp);
	if (size2 < 0 || size1 != FUNC4(size2))
		return (EFAULT);

	return (0);
}