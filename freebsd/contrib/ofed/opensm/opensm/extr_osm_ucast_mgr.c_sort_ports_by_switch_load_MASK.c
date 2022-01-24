#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* p_subn; int /*<<< orphan*/  p_log; } ;
typedef  TYPE_2__ osm_ucast_mgr_t ;
struct TYPE_5__ {int /*<<< orphan*/  sw_guid_tbl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  OSM_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC1 (void*,TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (void*) ; 
 int /*<<< orphan*/  compar_sw_load ; 
 int /*<<< orphan*/  FUNC5 (void**) ; 
 void** FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (void**,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 

__attribute__((used)) static void FUNC9(osm_ucast_mgr_t * m)
{
	int i, num = FUNC2(&m->p_subn->sw_guid_tbl);
	void **s = FUNC6(num * sizeof(*s));
	if (!s) {
		FUNC0(m->p_log, OSM_LOG_ERROR, "ERR 3A0C: "
			"No memory, skip by switch load sorting.\n");
		return;
	}
	s[0] = FUNC3(&m->p_subn->sw_guid_tbl);
	for (i = 1; i < num; i++)
		s[i] = FUNC4(s[i - 1]);

	for (i = 0; i < num; i++)
		FUNC8(s[i]);

	FUNC7(s, num, sizeof(*s), compar_sw_load);

	for (i = 0; i < num; i++)
		FUNC1(s[i], m);
	FUNC5(s);
}