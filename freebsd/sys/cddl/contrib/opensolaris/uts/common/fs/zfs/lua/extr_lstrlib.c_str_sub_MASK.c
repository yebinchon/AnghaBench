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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,size_t) ; 
 size_t FUNC5 (int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int FUNC6 (lua_State *L) {
  size_t l;
  const char *s = FUNC1(L, 1, &l);
  size_t start = FUNC5(FUNC0(L, 2), l);
  size_t end = FUNC5(FUNC2(L, 3, -1), l);
  if (start < 1) start = 1;
  if (end > l) end = l;
  if (start <= end)
    FUNC4(L, s + start - 1, end - start + 1);
  else FUNC3(L, "");
  return 1;
}