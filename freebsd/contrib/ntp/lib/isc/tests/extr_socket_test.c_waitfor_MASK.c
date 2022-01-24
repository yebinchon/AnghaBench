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
struct TYPE_3__ {scalar_t__ done; } ;
typedef  TYPE_1__ completion_t ;

/* Variables and functions */
 int /*<<< orphan*/  ISC_R_FAILURE ; 
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  taskmgr ; 

__attribute__((used)) static isc_result_t
FUNC3(completion_t *completion) {
	int i = 0;
	while (!completion->done && i++ < 5000) {
#ifndef ISC_PLATFORM_USETHREADS
		while (FUNC1(taskmgr))
			FUNC0(taskmgr);
#endif
		FUNC2(1000);
	}
	if (completion->done)
		return (ISC_R_SUCCESS);
	return (ISC_R_FAILURE);
}