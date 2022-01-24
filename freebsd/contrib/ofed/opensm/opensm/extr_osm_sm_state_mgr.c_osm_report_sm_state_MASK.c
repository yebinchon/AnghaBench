#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  p_log; TYPE_1__* p_subn; } ;
typedef  TYPE_2__ osm_sm_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_4__ {int /*<<< orphan*/  sm_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FILE_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  OSM_LOG_SYS ; 
 int /*<<< orphan*/  OSM_LOG_VERBOSE ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char const*) ; 

void FUNC4(osm_sm_t * sm)
{
	char buf[64];
	const char *state_str = FUNC1(sm->p_subn->sm_state);

	FUNC2(sm->p_log, OSM_LOG_SYS, FILE_ID, "Entering %s state\n", state_str);
	FUNC3(buf, sizeof(buf), "ENTERING SM %s STATE", state_str);
	FUNC0(sm->p_log, OSM_LOG_VERBOSE, buf);
}