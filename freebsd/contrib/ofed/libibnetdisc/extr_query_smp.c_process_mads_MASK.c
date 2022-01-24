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
struct TYPE_4__ {int /*<<< orphan*/  smps_on_wire; } ;
typedef  TYPE_1__ smp_engine_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__*) ; 

int FUNC2(smp_engine_t * engine)
{
	int rc;
	while (!FUNC0(&engine->smps_on_wire))
		if ((rc = FUNC1(engine)) != 0)
			return rc;
	return 0;
}