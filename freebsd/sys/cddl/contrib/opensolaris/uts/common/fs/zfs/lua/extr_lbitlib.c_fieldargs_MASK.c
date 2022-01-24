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
 int LUA_NBITS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC4 (lua_State *L, int farg, int *width) {
  int f = FUNC1(L, farg);
  int w = FUNC3(L, farg + 1, 1);
  FUNC0(L, 0 <= f, farg, "field cannot be negative");
  FUNC0(L, 0 < w, farg + 1, "width must be positive");
  if (f + w > LUA_NBITS)
    FUNC2(L, "trying to access non-existent bits");
  *width = w;
  return f;
}