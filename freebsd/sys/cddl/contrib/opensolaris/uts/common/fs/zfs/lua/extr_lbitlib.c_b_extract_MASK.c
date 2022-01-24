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
 int FUNC0 (int /*<<< orphan*/ *,int,int*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int) ; 

__attribute__((used)) static int FUNC4 (lua_State *L) {
  int w;
  b_uint r = FUNC1(L, 1);
  int f = FUNC0(L, 2, &w);
  r = (r >> f) & FUNC3(w);
  FUNC2(L, r);
  return 1;
}