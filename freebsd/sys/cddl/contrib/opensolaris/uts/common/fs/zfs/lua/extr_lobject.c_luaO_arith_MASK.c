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
typedef  int /*<<< orphan*/  lua_Number ;

/* Variables and functions */
#define  LUA_OPADD 134 
#define  LUA_OPDIV 133 
#define  LUA_OPMOD 132 
#define  LUA_OPMUL 131 
#define  LUA_OPPOW 130 
#define  LUA_OPSUB 129 
#define  LUA_OPUNM 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

lua_Number FUNC8 (int op, lua_Number v1, lua_Number v2) {
  switch (op) {
    case LUA_OPADD: return FUNC1(NULL, v1, v2);
    case LUA_OPSUB: return FUNC6(NULL, v1, v2);
    case LUA_OPMUL: return FUNC4(NULL, v1, v2);
    case LUA_OPDIV: return FUNC2(NULL, v1, v2);
    case LUA_OPMOD: return FUNC3(NULL, v1, v2);
    case LUA_OPPOW: return FUNC5(NULL, v1, v2);
    case LUA_OPUNM: return FUNC7(NULL, v1);
    default: FUNC0(0); return 0;
  }
}