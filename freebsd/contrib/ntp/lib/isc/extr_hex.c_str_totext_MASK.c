#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  isc_result_t ;
struct TYPE_3__ {unsigned int length; int /*<<< orphan*/  base; } ;
typedef  TYPE_1__ isc_region_t ;
typedef  int /*<<< orphan*/  isc_buffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  ISC_R_NOSPACE ; 
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,unsigned int) ; 
 unsigned int FUNC3 (char const*) ; 

__attribute__((used)) static isc_result_t
FUNC4(const char *source, isc_buffer_t *target) {
	unsigned int l;
	isc_region_t region;

	FUNC1(target, &region);
	l = FUNC3(source);

	if (l > region.length)
		return (ISC_R_NOSPACE);

	FUNC2(region.base, source, l);
	FUNC0(target, l);
	return (ISC_R_SUCCESS);
}