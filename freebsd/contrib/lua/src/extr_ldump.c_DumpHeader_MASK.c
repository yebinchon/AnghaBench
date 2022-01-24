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
typedef  int /*<<< orphan*/  lua_Integer ;
typedef  int /*<<< orphan*/  Instruction ;
typedef  int /*<<< orphan*/  DumpState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LUAC_DATA ; 
 int LUAC_FORMAT ; 
 int /*<<< orphan*/  LUAC_INT ; 
 int /*<<< orphan*/  LUAC_NUM ; 
 int LUAC_VERSION ; 
 int /*<<< orphan*/  LUA_SIGNATURE ; 

__attribute__((used)) static void FUNC4 (DumpState *D) {
  FUNC2(LUA_SIGNATURE, D);
  FUNC0(LUAC_VERSION, D);
  FUNC0(LUAC_FORMAT, D);
  FUNC2(LUAC_DATA, D);
  FUNC0(sizeof(int), D);
  FUNC0(sizeof(size_t), D);
  FUNC0(sizeof(Instruction), D);
  FUNC0(sizeof(lua_Integer), D);
  FUNC0(sizeof(lua_Number), D);
  FUNC1(LUAC_INT, D);
  FUNC3(LUAC_NUM, D);
}