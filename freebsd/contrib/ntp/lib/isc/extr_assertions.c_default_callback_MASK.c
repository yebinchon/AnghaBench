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
typedef  scalar_t__ isc_result_t ;
typedef  int /*<<< orphan*/  isc_assertiontype_t ;

/* Variables and functions */
 int BACKTRACE_MAXFRAME ; 
 int /*<<< orphan*/  ISC_MSGSET_GENERAL ; 
 int /*<<< orphan*/  ISC_MSG_FAILED ; 
 scalar_t__ ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (void*,char const**,unsigned long*) ; 
 scalar_t__ FUNC4 (void**,int,int*) ; 
 int /*<<< orphan*/  isc_msgcat ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC6(const char *file, int line, isc_assertiontype_t type,
		 const char *cond)
{
	void *tracebuf[BACKTRACE_MAXFRAME];
	int i, nframes;
	const char *logsuffix = ".";
	const char *fname;
	isc_result_t result;

	result = FUNC4(tracebuf, BACKTRACE_MAXFRAME, &nframes);
		if (result == ISC_R_SUCCESS && nframes > 0)
			logsuffix = ", back trace";

	FUNC1(stderr, "%s:%d: %s(%s) %s%s\n",
		file, line, FUNC2(type), cond,
		FUNC5(isc_msgcat, ISC_MSGSET_GENERAL,
			       ISC_MSG_FAILED, "failed"), logsuffix);
	if (result == ISC_R_SUCCESS) {
		for (i = 0; i < nframes; i++) {
			unsigned long offset;

			fname = NULL;
			result = FUNC3(tracebuf[i], &fname,
							 &offset);
			if (result == ISC_R_SUCCESS) {
				FUNC1(stderr, "#%d %p in %s()+0x%lx\n", i,
					tracebuf[i], fname, offset);
			} else {
				FUNC1(stderr, "#%d %p in ??\n", i,
					tracebuf[i]);
			}
		}
	}
	FUNC0(stderr);
}