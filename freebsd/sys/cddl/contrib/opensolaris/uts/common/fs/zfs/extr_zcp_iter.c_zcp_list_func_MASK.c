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
struct TYPE_3__ {int (* func ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  kwargs; int /*<<< orphan*/  pargs; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ zcp_list_info_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(lua_State *state)
{
	zcp_list_info_t *info = FUNC0(state, FUNC1(1));

	FUNC3(state, info->name, info->pargs, info->kwargs);

	return (info->func(state));
}