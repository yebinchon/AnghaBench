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
typedef  int /*<<< orphan*/  pmu_mfr_t ;

/* Variables and functions */
 int /*<<< orphan*/  PMU_AMD ; 
 int /*<<< orphan*/  PMU_INTEL ; 
 int /*<<< orphan*/  PMU_INVALID ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (size_t) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int FUNC3 (char*,char*,size_t*,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static pmu_mfr_t
FUNC4(void)
{
	char *buf;
	size_t s;
	pmu_mfr_t mfr;

	if (FUNC3("kern.hwpmc.cpuid", (void *)NULL, &s,
	    (void *)NULL, 0) == -1)
		return (PMU_INVALID);
	if ((buf = FUNC1(s + 1)) == NULL)
		return (PMU_INVALID);
	if (FUNC3("kern.hwpmc.cpuid", buf, &s,
		(void *)NULL, 0) == -1) {
		FUNC0(buf);
		return (PMU_INVALID);
	}
	if (FUNC2(buf, "AuthenticAMD") != NULL)
		mfr = PMU_AMD;
	else if (FUNC2(buf, "GenuineIntel") != NULL)
		mfr = PMU_INTEL;
	else
		mfr = PMU_INVALID;
	FUNC0(buf);
	return (mfr);
}