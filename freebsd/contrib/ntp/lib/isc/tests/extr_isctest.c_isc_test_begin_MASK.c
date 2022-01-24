#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  isc_result_t ;
struct TYPE_4__ {scalar_t__ maximum_size; int /*<<< orphan*/  versions; int /*<<< orphan*/ * name; int /*<<< orphan*/ * stream; } ;
struct TYPE_5__ {TYPE_1__ file; } ;
typedef  TYPE_2__ isc_logdestination_t ;
typedef  int /*<<< orphan*/  isc_logconfig_t ;
typedef  scalar_t__ isc_boolean_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ISC_LOG_DYNAMIC ; 
 int /*<<< orphan*/  ISC_LOG_ROLLNEVER ; 
 int /*<<< orphan*/  ISC_LOG_TOFILEDESC ; 
 int /*<<< orphan*/  ISC_MEM_DEBUGRECORD ; 
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int /*<<< orphan*/  ISC_TRUE ; 
 int /*<<< orphan*/  categories ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  ectx ; 
 int /*<<< orphan*/  hash_active ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  isc_mem_debugging ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  lctx ; 
 int /*<<< orphan*/  mctx ; 
 int ncpus ; 

isc_result_t
FUNC12(FILE *logfile, isc_boolean_t start_managers) {
	isc_result_t result;

	isc_mem_debugging |= ISC_MEM_DEBUGRECORD;
	FUNC0(FUNC9(0, 0, &mctx));
	FUNC0(FUNC2(mctx, &ectx));

	FUNC0(FUNC3(mctx, ectx, 255));
	hash_active = ISC_TRUE;

	if (logfile != NULL) {
		isc_logdestination_t destination;
		isc_logconfig_t *logconfig = NULL;

		FUNC0(FUNC4(mctx, &lctx, &logconfig));
		FUNC6(lctx, categories);
		FUNC7(lctx);

		destination.file.stream = logfile;
		destination.file.name = NULL;
		destination.file.versions = ISC_LOG_ROLLNEVER;
		destination.file.maximum_size = 0;
		FUNC0(FUNC5(logconfig, "stderr",
					    ISC_LOG_TOFILEDESC,
					    ISC_LOG_DYNAMIC,
					    &destination, 0));
		FUNC0(FUNC8(logconfig, "stderr", NULL, NULL));
	}

#ifdef ISC_PLATFORM_USETHREADS
	ncpus = isc_os_ncpus();
#else
	ncpus = 1;
#endif

	if (start_managers)
		FUNC0(FUNC1());

	return (ISC_R_SUCCESS);

  cleanup:
	FUNC11();
	return (result);
}