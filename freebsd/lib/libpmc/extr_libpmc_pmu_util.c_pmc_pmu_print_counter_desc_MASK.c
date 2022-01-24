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
struct pmu_events_map {struct pmu_event* table; } ;
struct pmu_event {char* name; char* desc; scalar_t__ event; } ;

/* Variables and functions */
 struct pmu_events_map* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char const*) ; 

void
FUNC3(const char *ev)
{
	const struct pmu_events_map *pme;
	const struct pmu_event *pe;

	if ((pme = FUNC0(NULL)) == NULL)
		return;
	for (pe = pme->table; pe->name || pe->desc || pe->event; pe++) {
		if (pe->name == NULL)
			continue;
		if (FUNC2(pe->name, ev) != NULL &&
		    pe->desc != NULL)
			FUNC1("%s:\t%s\n", pe->name, pe->desc);
	}
}