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
typedef  int /*<<< orphan*/  scan_ds_t ;
struct TYPE_3__ {int /*<<< orphan*/  scn_queue; } ;
typedef  TYPE_1__ dsl_scan_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC2(dsl_scan_t *scn)
{
	void *cookie = NULL;
	scan_ds_t *sds;
	while ((sds = FUNC0(&scn->scn_queue, &cookie)) != NULL) {
		FUNC1(sds, sizeof (*sds));
	}
}