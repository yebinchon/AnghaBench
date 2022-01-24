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
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC6 (lua_State *L) {
  int size = FUNC0(L, 1);
  int pos = FUNC2(L, 2, size);
  if (pos != size)  /* validate 'pos' if given */
    FUNC1(L, 1 <= pos && pos <= size + 1, 1, "position out of bounds");
  FUNC4(L, 1, pos);  /* result = t[pos] */
  for ( ; pos < size; pos++) {
    FUNC4(L, 1, pos+1);
    FUNC5(L, 1, pos);  /* t[pos] = t[pos+1] */
  }
  FUNC3(L);
  FUNC5(L, 1, pos);  /* t[pos] = nil */
  return 1;
}