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
typedef  int /*<<< orphan*/  isc_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ISC_R_NOSPACE ; 
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int /*<<< orphan*/  ISC_STRING_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC3 (char*,char const*,size_t) ; 
 size_t FUNC4 (char*) ; 

isc_result_t
FUNC5(char *target, size_t size, const char *source) {
	FUNC1(size > 0U);
	FUNC1(FUNC4(target) < size);

	if (FUNC3(target, source, size) >= size) {
		FUNC2(target, ISC_STRING_MAGIC, size);
		return (ISC_R_NOSPACE);
	}

	FUNC0(FUNC4(target) < size);

	return (ISC_R_SUCCESS);
}