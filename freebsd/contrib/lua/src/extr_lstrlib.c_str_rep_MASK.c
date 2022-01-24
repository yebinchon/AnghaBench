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
typedef  size_t lua_Integer ;
typedef  int /*<<< orphan*/  luaL_Buffer ;

/* Variables and functions */
 size_t MAXSIZE ; 
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int,char*,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,size_t) ; 

__attribute__((used)) static int FUNC8 (lua_State *L) {
  size_t l, lsep;
  const char *s = FUNC2(L, 1, &l);
  lua_Integer n = FUNC1(L, 2);
  const char *sep = FUNC4(L, 3, "", &lsep);
  if (n <= 0) FUNC6(L, "");
  else if (l + lsep < l || l + lsep > MAXSIZE / n)  /* may overflow? */
    return FUNC3(L, "resulting string too large");
  else {
    size_t totallen = (size_t)n * l + (size_t)(n - 1) * lsep;
    luaL_Buffer b;
    char *p = FUNC0(L, &b, totallen);
    while (n-- > 1) {  /* first n-1 copies (followed by separator) */
      FUNC7(p, s, l * sizeof(char)); p += l;
      if (lsep > 0) {  /* empty 'memcpy' is not that cheap */
        FUNC7(p, sep, lsep * sizeof(char));
        p += lsep;
      }
    }
    FUNC7(p, s, l * sizeof(char));  /* last copy (not followed by separator) */
    FUNC5(&b, totallen);
  }
  return 1;
}