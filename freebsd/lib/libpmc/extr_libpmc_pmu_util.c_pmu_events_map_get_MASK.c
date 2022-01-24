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
struct pmu_events_map {char* cpuid; } ;
struct TYPE_3__ {size_t rm_eo; size_t rm_so; } ;
typedef  TYPE_1__ regmatch_t ;
typedef  int /*<<< orphan*/  regex_t ;

/* Variables and functions */
 int /*<<< orphan*/  REG_EXTENDED ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 struct pmu_events_map* pmu_events_map ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (char*) ; 
 int FUNC6 (char*,char*,size_t*,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const struct pmu_events_map *
FUNC7(const char *cpuid)
{
	regex_t re;
	regmatch_t pmatch[1];
	size_t s, len;
	char buf[64];
	int match;
	const struct pmu_events_map *pme;

	if (cpuid != NULL) {
		FUNC0(buf, cpuid, 64);
	} else {
		if (FUNC6("kern.hwpmc.cpuid", (void *)NULL, &s,
		    (void *)NULL, 0) == -1)
			return (NULL);
		if (FUNC6("kern.hwpmc.cpuid", buf, &s,
		    (void *)NULL, 0) == -1)
			return (NULL);
	}
	for (pme = pmu_events_map; pme->cpuid != NULL; pme++) {
		if (FUNC2(&re, pme->cpuid, REG_EXTENDED) != 0) {
			FUNC1("regex '%s' failed to compile, ignoring\n",
			    pme->cpuid);
			continue;
		}
		match = FUNC3(&re, buf, 1, pmatch, 0);
		FUNC4(&re);
		if (match == 0) {
			len = pmatch[0].rm_eo - pmatch[0].rm_so;
			if(len == FUNC5(buf))
				return (pme);
		}
	}
	return (NULL);
}