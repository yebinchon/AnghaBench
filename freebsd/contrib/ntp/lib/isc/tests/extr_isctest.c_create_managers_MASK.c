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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mctx ; 
 int ncpus ; 
 int /*<<< orphan*/  socketmgr ; 
 int /*<<< orphan*/  taskmgr ; 
 int /*<<< orphan*/  timermgr ; 

__attribute__((used)) static isc_result_t
FUNC6() {
	isc_result_t result;
#ifdef ISC_PLATFORM_USETHREADS
	ncpus = isc_os_ncpus();
#else
	ncpus = 1;
#endif

	FUNC0(FUNC4(mctx, ncpus, 0, &taskmgr));
	FUNC0(FUNC5(mctx, &timermgr));
	FUNC0(FUNC3(mctx, &socketmgr));
	return (ISC_R_SUCCESS);

  cleanup:
	FUNC1();
	return (result);
}