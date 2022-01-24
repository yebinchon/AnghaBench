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

/* Variables and functions */
#define  LUA_OPADD 135 
#define  LUA_OPDIV 134 
#define  LUA_OPIDIV 133 
#define  LUA_OPMOD 132 
#define  LUA_OPMUL 131 
#define  LUA_OPPOW 130 
#define  LUA_OPSUB 129 
#define  LUA_OPUNM 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static lua_Number FUNC9 (lua_State *L, int op, lua_Number v1,
                                                  lua_Number v2) {
  switch (op) {
    case LUA_OPADD: return FUNC1(L, v1, v2);
    case LUA_OPSUB: return FUNC7(L, v1, v2);
    case LUA_OPMUL: return FUNC5(L, v1, v2);
    case LUA_OPDIV: return FUNC2(L, v1, v2);
    case LUA_OPPOW: return FUNC6(L, v1, v2);
    case LUA_OPIDIV: return FUNC3(L, v1, v2);
    case LUA_OPUNM: return FUNC8(L, v1);
    case LUA_OPMOD: {
      lua_Number m;
      FUNC4(L, v1, v2, m);
      return m;
    }
    default: FUNC0(0); return 0;
  }
}