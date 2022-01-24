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
typedef  scalar_t__ lua_Number ;
typedef  int /*<<< orphan*/  lua_Integer ;
typedef  int /*<<< orphan*/  TValue ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/  const*) ; 

int FUNC10 (const TValue *obj, lua_Integer *p, int mode) {
  TValue v;
 again:
  if (FUNC7(obj)) {
    lua_Number n = FUNC1(obj);
    lua_Number f = FUNC3(n);
    if (n != f) {  /* not an integral value? */
      if (mode == 0) return 0;  /* fails if mode demands integral value */
      else if (mode > 1)  /* needs ceil? */
        f += 1;  /* convert floor to ceil (remember: n != f) */
    }
    return FUNC5(f, p);
  }
  else if (FUNC8(obj)) {
    *p = FUNC2(obj);
    return 1;
  }
  else if (FUNC0(obj) &&
            FUNC4(FUNC6(obj), &v) == FUNC9(obj) + 1) {
    obj = &v;
    goto again;  /* convert result from 'luaO_str2num' to an integer */
  }
  return 0;  /* conversion failed */
}