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
struct pmu_event_desc {int /*<<< orphan*/  ped_period; } ;
struct pmu_event {char const* alias; int /*<<< orphan*/ * event; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_SAMPLE_COUNT ; 
 char* FUNC0 (char const*) ; 
 struct pmu_event* FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct pmu_event_desc*,int /*<<< orphan*/ *) ; 

uint64_t
FUNC3(const char *event_name)
{
	const struct pmu_event *pe;
	struct pmu_event_desc ped;

	event_name = FUNC0(event_name);
	if ((pe = FUNC1(NULL, event_name, NULL)) == NULL)
		return (DEFAULT_SAMPLE_COUNT);
	if (pe->alias && (pe = FUNC1(NULL, pe->alias, NULL)) == NULL)
		return (DEFAULT_SAMPLE_COUNT);
	if (pe->event == NULL)
		return (DEFAULT_SAMPLE_COUNT);
	if (FUNC2(&ped, pe->event))
		return (DEFAULT_SAMPLE_COUNT);
	return (ped.ped_period);
}