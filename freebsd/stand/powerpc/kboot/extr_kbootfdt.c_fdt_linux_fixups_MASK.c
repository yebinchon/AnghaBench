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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int,char*) ; 
 void* FUNC4 (void*,int,char*,int*) ; 
 int FUNC5 (void*,char*) ; 
 int /*<<< orphan*/  FUNC6 (void*,int,char*,void const*,int) ; 

__attribute__((used)) static void
FUNC7(void *fdtp)
{
	int offset, len;
	const void *prop;

	/*
	 * Remove /memory/available properties, which reflect long-gone OF
	 * state
	 */

	offset = FUNC5(fdtp, "/memory@0");
	if (offset > 0)
		FUNC3(fdtp, offset, "available");

	/*
	 * Add reservations for OPAL and RTAS state if present
	 */

	offset = FUNC5(fdtp, "/ibm,opal");
	if (offset > 0) {
		const uint64_t *base, *size;
		base = FUNC4(fdtp, offset, "opal-base-address",
		    &len);
		size = FUNC4(fdtp, offset, "opal-runtime-size",
		    &len);
		if (base != NULL && size != NULL)
			FUNC2(fdtp, FUNC1(*base),
			    FUNC1(*size));
	}
	offset = FUNC5(fdtp, "/rtas");
	if (offset > 0) {
		const uint32_t *base, *size;
		base = FUNC4(fdtp, offset, "linux,rtas-base", &len);
		size = FUNC4(fdtp, offset, "rtas-size", &len);
		if (base != NULL && size != NULL)
			FUNC2(fdtp, FUNC0(*base),
			    FUNC0(*size));
	}

	/*
	 * Patch up /chosen nodes so that the stored handles mean something,
	 * where possible.
	 */
	offset = FUNC5(fdtp, "/chosen");
	if (offset > 0) {
		FUNC3(fdtp, offset, "cpu"); /* This node not meaningful */

		offset = FUNC5(fdtp, "/chosen");
		prop = FUNC4(fdtp, offset, "linux,stdout-package", &len);
		if (prop != NULL) {
			FUNC6(fdtp, offset, "stdout", prop, len);
			offset = FUNC5(fdtp, "/chosen");
			FUNC6(fdtp, offset, "stdin", prop, len);
		}
	}
}