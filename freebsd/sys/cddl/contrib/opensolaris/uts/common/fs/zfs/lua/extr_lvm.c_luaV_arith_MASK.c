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
typedef  int /*<<< orphan*/  lua_Number ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int TMS ;
typedef  int /*<<< orphan*/  StkId ;

/* Variables and functions */
 int LUA_OPADD ; 
 int LUA_OPDIV ; 
 int LUA_OPMOD ; 
 int TM_ADD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC8 (lua_State *L, StkId ra, const TValue *rb,
                 const TValue *rc, TMS op) {
  TValue tempb, tempc;
  const TValue *b, *c;
  if ((b = FUNC5(rb, &tempb)) != NULL &&
      (c = FUNC5(rc, &tempc)) != NULL) {
    /*
     * Patched: if dividing or modding, use patched functions from 5.3
     */
    lua_Number res;
    int lop = op - TM_ADD + LUA_OPADD;
    if (lop == LUA_OPDIV) {
      res = FUNC3(L, FUNC6(b), FUNC6(c));
    } else if (lop == LUA_OPMOD) {
      res = FUNC4(L, FUNC6(b), FUNC6(c));
    } else {
      res = FUNC2(op - TM_ADD + LUA_OPADD, FUNC6(b), FUNC6(c));
    }
    FUNC7(ra, res);
  }
  else if (!FUNC0(L, rb, rc, ra, op))
    FUNC1(L, rb, rc);
}