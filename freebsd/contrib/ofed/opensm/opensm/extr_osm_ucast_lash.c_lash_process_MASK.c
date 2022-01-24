#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  osm_log_t ;
struct TYPE_11__ {int balance_limit; scalar_t__ vl_min; TYPE_1__* p_osm; } ;
typedef  TYPE_2__ lash_t ;
struct TYPE_10__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC9(void *context)
{
	lash_t *p_lash = context;
	osm_log_t *p_log = &p_lash->p_osm->log;
	int status = 0;

	FUNC0(p_log);

	p_lash->balance_limit = 6;

	/* everything starts here */
	FUNC5(p_lash);

	status = FUNC2(p_lash);
	if (status)
		goto Exit;

	status = FUNC4(p_lash);
	if (status)
		goto Exit;

	FUNC8(p_lash);

	status = FUNC6(p_lash);
	if (status)
		goto Exit;

	FUNC7(p_lash);

Exit:
	if (p_lash->vl_min)
		FUNC3(p_lash);
	FUNC1(p_log);

	return status;
}