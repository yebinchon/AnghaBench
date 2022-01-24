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
typedef  int b_uint ;

/* Variables and functions */
 int ALLONES ; 
 int LUA_NBITS ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int) ; 

__attribute__((used)) static int FUNC5 (lua_State *L) {
  b_uint r = FUNC2(L, 1);
  int i = FUNC1(L, 2);
  if (i < 0 || !(r & ((b_uint)1 << (LUA_NBITS - 1))))
    return FUNC0(L, r, -i);
  else {  /* arithmetic shift for 'negative' number */
    if (i >= LUA_NBITS) r = ALLONES;
    else
      r = FUNC4((r >> i) | ~(~(b_uint)0 >> i));  /* add signal bit */
    FUNC3(L, r);
    return 1;
  }
}