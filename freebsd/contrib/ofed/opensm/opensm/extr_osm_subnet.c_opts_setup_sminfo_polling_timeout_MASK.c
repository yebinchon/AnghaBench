#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_6__ {TYPE_1__* p_osm; } ;
typedef  TYPE_2__ osm_subn_t ;
struct TYPE_7__ {int /*<<< orphan*/  polling_timer; } ;
typedef  TYPE_3__ osm_sm_t ;
struct TYPE_5__ {TYPE_3__ sm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(osm_subn_t *p_subn, void *p_val)
{
	osm_sm_t *p_sm = &p_subn->p_osm->sm;
	uint32_t sminfo_polling_timeout = *((uint32_t *) p_val);

	FUNC1(&p_sm->polling_timer);
	FUNC0(&p_sm->polling_timer, sminfo_polling_timeout);
}