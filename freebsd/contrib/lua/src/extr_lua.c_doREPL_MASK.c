#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_MULTRET ; 
 int LUA_OK ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 char const* progname ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC6 (lua_State *L) {
  int status;
  const char *oldprogname = progname;
  progname = NULL;  /* no 'progname' on errors in interactive mode */
  while ((status = FUNC2(L)) != -1) {
    if (status == LUA_OK)
      status = FUNC0(L, 0, LUA_MULTRET);
    if (status == LUA_OK) FUNC1(L);
    else FUNC5(L, status);
  }
  FUNC3(L, 0);  /* clear stack */
  FUNC4();
  progname = oldprogname;
}