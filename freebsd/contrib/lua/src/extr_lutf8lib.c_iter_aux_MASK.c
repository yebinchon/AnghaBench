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
typedef  scalar_t__ lua_Integer ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 char* FUNC5 (char const*,int*) ; 

__attribute__((used)) static int FUNC6 (lua_State *L) {
  size_t len;
  const char *s = FUNC1(L, 1, &len);
  lua_Integer n = FUNC4(L, 2) - 1;
  if (n < 0)  /* first iteration? */
    n = 0;  /* start from here */
  else if (n < (lua_Integer)len) {
    n++;  /* skip current byte */
    while (FUNC0(s + n)) n++;  /* and its continuations */
  }
  if (n >= (lua_Integer)len)
    return 0;  /* no more codepoints */
  else {
    int code;
    const char *next = FUNC5(s + n, &code);
    if (next == NULL || FUNC0(next))
      return FUNC2(L, "invalid UTF-8 code");
    FUNC3(L, n + 1);
    FUNC3(L, code);
    return 2;
  }
}