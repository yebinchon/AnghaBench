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
struct TYPE_4__ {int /*<<< orphan*/  umad_fd; int /*<<< orphan*/  smps_on_wire; } ;
typedef  TYPE_1__ smp_engine_t ;
typedef  int /*<<< orphan*/  ibnd_smp_t ;
typedef  int /*<<< orphan*/  cl_map_item_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(smp_engine_t * engine)
{
	cl_map_item_t *item;
	ibnd_smp_t *smp;

	/* remove queued smps */
	smp = FUNC5(engine);
	if (smp)
		FUNC0("outstanding SMP's\n");
	for ( /* */ ; smp; smp = FUNC5(engine))
		FUNC4(smp);

	/* remove smps from the wire queue */
	item = FUNC2(&engine->smps_on_wire);
	if (item != FUNC1(&engine->smps_on_wire))
		FUNC0("outstanding SMP's on wire\n");
	for ( /* */ ; item != FUNC1(&engine->smps_on_wire);
	     item = FUNC2(&engine->smps_on_wire)) {
		FUNC3(&engine->smps_on_wire, item);
		FUNC4(item);
	}

	FUNC6(engine->umad_fd);
}