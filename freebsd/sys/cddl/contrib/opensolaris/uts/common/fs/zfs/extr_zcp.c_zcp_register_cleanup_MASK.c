#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  zri_cleanup_handlers; } ;
typedef  TYPE_1__ zcp_run_info_t ;
typedef  int /*<<< orphan*/  zcp_cleanup_t ;
struct TYPE_8__ {void* zch_cleanup_arg; int /*<<< orphan*/  zch_cleanup_func; } ;
typedef  TYPE_2__ zcp_cleanup_handler_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  KM_SLEEP ; 
 TYPE_2__* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 

zcp_cleanup_handler_t *
FUNC3(lua_State *state, zcp_cleanup_t cleanfunc, void *cleanarg)
{
	zcp_run_info_t *ri = FUNC2(state);

	zcp_cleanup_handler_t *zch = FUNC0(sizeof (*zch), KM_SLEEP);
	zch->zch_cleanup_func = cleanfunc;
	zch->zch_cleanup_arg = cleanarg;
	FUNC1(&ri->zri_cleanup_handlers, zch);

	return (zch);
}