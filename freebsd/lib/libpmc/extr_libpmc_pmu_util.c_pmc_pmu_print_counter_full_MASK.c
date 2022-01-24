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
struct pmu_event {char* name; char* desc; char* event; char* long_desc; char* topic; char* pmu; char* unit; char* perpkg; char* metric_expr; char* metric_name; char* metric_group; } ;

/* Variables and functions */
 struct pmu_events_map* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
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
		if (FUNC2(pe->name, ev) == NULL)
			continue;
		FUNC1("name: %s\n", pe->name);
		if (pe->long_desc != NULL)
			FUNC1("desc: %s\n", pe->long_desc);
		else if (pe->desc != NULL)
			FUNC1("desc: %s\n", pe->desc);
		if (pe->event != NULL)
			FUNC1("event: %s\n", pe->event);
		if (pe->topic != NULL)
			FUNC1("topic: %s\n", pe->topic);
		if (pe->pmu != NULL)
			FUNC1("pmu: %s\n", pe->pmu);
		if (pe->unit != NULL)
			FUNC1("unit: %s\n", pe->unit);
		if (pe->perpkg != NULL)
			FUNC1("perpkg: %s\n", pe->perpkg);
		if (pe->metric_expr != NULL)
			FUNC1("metric_expr: %s\n", pe->metric_expr);
		if (pe->metric_name != NULL)
			FUNC1("metric_name: %s\n", pe->metric_name);
		if (pe->metric_group != NULL)
			FUNC1("metric_group: %s\n", pe->metric_group);
	}
}