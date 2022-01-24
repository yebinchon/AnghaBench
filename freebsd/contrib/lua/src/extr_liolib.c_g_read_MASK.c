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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ LUA_MINSTACK ; 
 scalar_t__ LUA_TNUMBER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16 (lua_State *L, FILE *f, int first) {
  int nargs = FUNC7(L) - 1;
  int success;
  int n;
  FUNC0(f);
  if (nargs == 0) {  /* no arguments? */
    success = FUNC13(L, f, 1);
    n = first+1;  /* to return 1 result */
  }
  else {  /* ensure stack space for all results and for auxlib's buffer */
    FUNC4(L, nargs+LUA_MINSTACK, "too many arguments");
    success = 1;
    for (n = first; nargs-- && success; n++) {
      if (FUNC10(L, n) == LUA_TNUMBER) {
        size_t l = (size_t)FUNC3(L, n);
        success = (l == 0) ? FUNC15(L, f) : FUNC12(L, f, l);
      }
      else {
        const char *p = FUNC5(L, n);
        if (*p == '*') p++;  /* skip optional '*' (for compatibility) */
        switch (*p) {
          case 'n':  /* number */
            success = FUNC14(L, f);
            break;
          case 'l':  /* line */
            success = FUNC13(L, f, 1);
            break;
          case 'L':  /* line with end-of-line */
            success = FUNC13(L, f, 0);
            break;
          case 'a':  /* file */
            FUNC11(L, f);  /* read entire file */
            success = 1; /* always success */
            break;
          default:
            return FUNC2(L, n, "invalid format");
        }
      }
    }
  }
  if (FUNC1(f))
    return FUNC6(L, 0, NULL);
  if (!success) {
    FUNC8(L, 1);  /* remove last result */
    FUNC9(L);  /* push nil instead */
  }
  return n - first;
}