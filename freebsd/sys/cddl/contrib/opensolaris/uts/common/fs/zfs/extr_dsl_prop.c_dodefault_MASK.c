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
typedef  scalar_t__ zfs_prop_t ;
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  EOVERFLOW ; 
 scalar_t__ PROP_TYPE_STRING ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ZPROP_INVAL ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static int
FUNC7(zfs_prop_t prop, int intsz, int numints, void *buf)
{
	/*
	 * The setonce properties are read-only, BUT they still
	 * have a default value that can be used as the initial
	 * value.
	 */
	if (prop == ZPROP_INVAL ||
	    (FUNC5(prop) && !FUNC6(prop)))
		return (FUNC0(ENOENT));

	if (FUNC4(prop) == PROP_TYPE_STRING) {
		if (FUNC3(prop) == NULL)
			return (FUNC0(ENOENT));
		if (intsz != 1)
			return (FUNC0(EOVERFLOW));
		(void) FUNC1(buf, FUNC3(prop),
		    numints);
	} else {
		if (intsz != 8 || numints < 1)
			return (FUNC0(EOVERFLOW));

		*(uint64_t *)buf = FUNC2(prop);
	}

	return (0);
}