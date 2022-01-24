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
 int MAXARGLINE ; 
 int /*<<< orphan*/  io_readline ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC6 (lua_State *L, int toclose) {
  int n = FUNC1(L) - 1;  /* number of arguments to read */
  FUNC0(L, n <= MAXARGLINE, MAXARGLINE + 2, "too many arguments");
  FUNC4(L, n);  /* number of arguments to read */
  FUNC2(L, toclose);  /* close/not close file when finished */
  FUNC5(L, 2, 2);  /* move 'n' and 'toclose' to their positions */
  FUNC3(L, io_readline, 3 + n);
}