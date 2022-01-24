#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* zri_tx; } ;
typedef  TYPE_2__ zcp_run_info_t ;
struct TYPE_8__ {int /*<<< orphan*/  kwargs; int /*<<< orphan*/  pargs; int /*<<< orphan*/  name; } ;
typedef  TYPE_3__ zcp_lib_info_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_6__ {int /*<<< orphan*/  tx_txg; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,int) ; 
 TYPE_3__ zcp_debug_info ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int
FUNC4(lua_State *state)
{
	const char *dbgstring;
	zcp_run_info_t *ri = FUNC2(state);
	zcp_lib_info_t *libinfo = &zcp_debug_info;

	FUNC1(state, libinfo->name, libinfo->pargs, libinfo->kwargs);

	dbgstring = FUNC0(state, 1);

	FUNC3("txg %lld ZCP: %s", ri->zri_tx->tx_txg, dbgstring);

	return (0);
}