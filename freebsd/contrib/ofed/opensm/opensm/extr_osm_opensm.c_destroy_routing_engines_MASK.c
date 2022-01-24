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
struct osm_routing_engine {int /*<<< orphan*/  context; int /*<<< orphan*/  (* destroy ) (int /*<<< orphan*/ ) ;struct osm_routing_engine* next; } ;
struct TYPE_3__ {struct osm_routing_engine* routing_engine_list; } ;
typedef  TYPE_1__ osm_opensm_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct osm_routing_engine*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(osm_opensm_t *osm)
{
	struct osm_routing_engine *r, *next;

	next = osm->routing_engine_list;
	while (next) {
		r = next;
		next = r->next;
		if (r->destroy)
			r->destroy(r->context);
		FUNC0(r);
	}
}