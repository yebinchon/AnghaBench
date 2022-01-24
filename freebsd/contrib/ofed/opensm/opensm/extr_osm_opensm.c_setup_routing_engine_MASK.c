#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct routing_engine_module {char const* name; scalar_t__ (* setup ) (struct osm_routing_engine*,TYPE_1__*) ;} ;
struct osm_routing_engine {char const* name; scalar_t__ type; } ;
struct TYPE_4__ {int /*<<< orphan*/  log; struct osm_routing_engine* default_routing_engine; int /*<<< orphan*/  no_fallback_routing_engine; } ;
typedef  TYPE_1__ osm_opensm_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  OSM_LOG_DEBUG ; 
 int /*<<< orphan*/  OSM_LOG_ERROR ; 
 int /*<<< orphan*/  OSM_LOG_VERBOSE ; 
 scalar_t__ OSM_ROUTING_ENGINE_TYPE_MINHOP ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (struct osm_routing_engine*) ; 
 struct osm_routing_engine* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct osm_routing_engine*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (char const*) ; 
 struct routing_engine_module* routing_modules ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const*) ; 
 scalar_t__ FUNC6 (struct osm_routing_engine*,TYPE_1__*) ; 

__attribute__((used)) static struct osm_routing_engine *FUNC7(osm_opensm_t *osm,
						       const char *name)
{
	struct osm_routing_engine *re;
	const struct routing_engine_module *m;

	if (!FUNC5(name, "no_fallback")) {
		osm->no_fallback_routing_engine = TRUE;
		return NULL;
	}

	for (m = routing_modules; m->name && *m->name; m++) {
		if (!FUNC5(m->name, name)) {
			re = FUNC2(sizeof(struct osm_routing_engine));
			if (!re) {
				FUNC0(&osm->log, OSM_LOG_VERBOSE,
					"memory allocation failed\n");
				return NULL;
			}
			FUNC3(re, 0, sizeof(struct osm_routing_engine));

			re->name = m->name;
			re->type = FUNC4(m->name);
			if (m->setup(re, osm)) {
				FUNC0(&osm->log, OSM_LOG_VERBOSE,
					"setup of routing"
					" engine \'%s\' failed\n", name);
				FUNC1(re);
				return NULL;
			}
			FUNC0(&osm->log, OSM_LOG_DEBUG,
				"\'%s\' routing engine set up\n", re->name);
			if (re->type == OSM_ROUTING_ENGINE_TYPE_MINHOP)
				osm->default_routing_engine = re;
			return re;
		}
	}

	FUNC0(&osm->log, OSM_LOG_ERROR,
		"cannot find or setup routing engine \'%s\'\n", name);
	return NULL;
}