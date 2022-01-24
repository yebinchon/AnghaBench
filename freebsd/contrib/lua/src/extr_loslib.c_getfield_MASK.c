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
typedef  int lua_Integer ;

/* Variables and functions */
 int LUA_TNIL ; 
 int L_MAXDATEFIELD ; 
 int FUNC0 (int /*<<< orphan*/ *,char*,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int*) ; 

__attribute__((used)) static int FUNC4 (lua_State *L, const char *key, int d, int delta) {
  int isnum;
  int t = FUNC1(L, -1, key);  /* get field and its type */
  lua_Integer res = FUNC3(L, -1, &isnum);
  if (!isnum) {  /* field is not an integer? */
    if (t != LUA_TNIL)  /* some other value? */
      return FUNC0(L, "field '%s' is not an integer", key);
    else if (d < 0)  /* absent field; no default? */
      return FUNC0(L, "field '%s' missing in date table", key);
    res = d;
  }
  else {
    if (!(-L_MAXDATEFIELD <= res && res <= L_MAXDATEFIELD))
      return FUNC0(L, "field '%s' is out-of-bound", key);
    res -= delta;
  }
  FUNC2(L, 1);
  return (int)res;
}