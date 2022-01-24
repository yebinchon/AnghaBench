#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct osm_routing_engine {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  default_routing_engine; } ;
typedef  TYPE_1__ osm_opensm_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct osm_routing_engine*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct osm_routing_engine* FUNC2 (TYPE_1__*,char*) ; 
 char* FUNC3 (char const*) ; 
 char* FUNC4 (char*,char*,char**) ; 

__attribute__((used)) static void FUNC5(osm_opensm_t *osm, const char *engine_names)
{
	char *name, *str, *p;
	struct osm_routing_engine *re;

	if (engine_names && *engine_names) {
		str = FUNC3(engine_names);
		name = FUNC4(str, ", \t\n", &p);
		while (name && *name) {
			re = FUNC2(osm, name);
			if (re)
				FUNC0(osm, re);
			name = FUNC4(NULL, ", \t\n", &p);
		}
		FUNC1(str);
	}
	if (!osm->default_routing_engine)
		FUNC2(osm, "minhop");
}