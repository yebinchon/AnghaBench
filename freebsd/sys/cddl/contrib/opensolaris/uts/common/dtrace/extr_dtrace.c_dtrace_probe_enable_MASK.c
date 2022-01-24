#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zoneid_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uid_t ;
typedef  int /*<<< orphan*/  dtrace_probekey_t ;
typedef  int /*<<< orphan*/  dtrace_probedesc_t ;
struct TYPE_12__ {TYPE_2__* dten_vstate; } ;
typedef  TYPE_4__ dtrace_enabling_t ;
struct TYPE_9__ {int /*<<< orphan*/  dcr_cred; } ;
struct TYPE_11__ {TYPE_1__ dts_cred; } ;
struct TYPE_10__ {TYPE_3__* dtvs_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * dtrace_ecb_create_cache ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  dtrace_lock ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *,TYPE_4__*),TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(dtrace_probedesc_t *desc, dtrace_enabling_t *enab)
{
	dtrace_probekey_t pkey;
	uint32_t priv;
	uid_t uid;
	zoneid_t zoneid;

	FUNC0(FUNC1(&dtrace_lock));
	dtrace_ecb_create_cache = NULL;

	if (desc == NULL) {
		/*
		 * If we're passed a NULL description, we're being asked to
		 * create an ECB with a NULL probe.
		 */
		(void) FUNC3(NULL, enab);
		return (0);
	}

	FUNC5(desc, &pkey);
	FUNC2(enab->dten_vstate->dtvs_state->dts_cred.dcr_cred,
	    &priv, &uid, &zoneid);

	return (FUNC4(&pkey, priv, uid, zoneid, dtrace_ecb_create_enable,
	    enab));
}