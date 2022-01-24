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
struct TYPE_3__ {scalar_t__ bind_handle; int /*<<< orphan*/  log; int /*<<< orphan*/  cc_disp_h; } ;
typedef  TYPE_1__ osm_congestion_control_t ;

/* Variables and functions */
 scalar_t__ OSM_BIND_INVALID_HANDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSM_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(osm_congestion_control_t * p_cc)
{
	FUNC1(p_cc->log);
	if (p_cc->bind_handle == OSM_BIND_INVALID_HANDLE) {
		FUNC0(p_cc->log, OSM_LOG_ERROR,
			"ERR C108: No previous bind\n");
		goto Exit;
	}
	FUNC3(p_cc->cc_disp_h);
Exit:
	FUNC2(p_cc->log);
}