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
 int LUA_NBITS ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static int FUNC3 (lua_State *L, int i) {
  b_uint r = FUNC0(L, 1);
  i &= (LUA_NBITS - 1);  /* i = i % NBITS */
  r = FUNC2(r);
  if (i != 0)  /* avoid undefined shift of LUA_NBITS when i == 0 */
    r = (r << i) | (r >> (LUA_NBITS - i));
  FUNC1(L, FUNC2(r));
  return 1;
}