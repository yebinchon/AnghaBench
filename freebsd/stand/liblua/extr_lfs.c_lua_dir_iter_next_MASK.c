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
struct dirent {int /*<<< orphan*/  d_name; } ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_3__ {int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ DIR ;

/* Variables and functions */
 int /*<<< orphan*/  DIR_METATABLE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct dirent* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(lua_State *L)
{
	struct dirent *entry;
	DIR *dp, **dpp;

	dpp = (DIR **)FUNC2(L, 1, DIR_METATABLE);
	dp = *dpp;
	FUNC1(L, dp != NULL, 1, "closed directory");

	entry = FUNC4(dp->fd);
	if (entry == NULL) {
		FUNC0(dp);
		*dpp = NULL;
		return 0;
	}

	FUNC3(L, entry->d_name);
	return 1;
}