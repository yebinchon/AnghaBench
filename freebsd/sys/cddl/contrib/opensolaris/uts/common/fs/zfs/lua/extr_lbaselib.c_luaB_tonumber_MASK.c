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
typedef  int lua_Number ;

/* Variables and functions */
 int /*<<< orphan*/  SPACECHARS ; 
 scalar_t__ FUNC0 (unsigned char) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int,size_t*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC10 (char const*,int /*<<< orphan*/ ) ; 
 char FUNC11 (unsigned char) ; 

__attribute__((used)) static int FUNC12 (lua_State *L) {
  if (FUNC6(L, 2)) {  /* standard conversion */
    int isnum;
    lua_Number n = FUNC9(L, 1, &isnum);
    if (isnum) {
      FUNC8(L, n);
      return 1;
    }  /* else not a number; must be something */
    FUNC3(L, 1);
  }
  else {
    size_t l;
    const char *s = FUNC5(L, 1, &l);
    const char *e = s + l;  /* end point for 's' */
    int base = FUNC4(L, 2);
    int neg = 0;
    FUNC2(L, 2 <= base && base <= 36, 2, "base out of range");
    s += FUNC10(s, SPACECHARS);  /* skip initial spaces */
    if (*s == '-') { s++; neg = 1; }  /* handle signal */
    else if (*s == '+') s++;
    if (FUNC0((unsigned char)*s)) {
      lua_Number n = 0;
      do {
        int digit = (FUNC1((unsigned char)*s)) ? *s - '0'
                       : FUNC11((unsigned char)*s) - 'A' + 10;
        if (digit >= base) break;  /* invalid numeral; force a fail */
        n = n * (lua_Number)base + (lua_Number)digit;
        s++;
      } while (FUNC0((unsigned char)*s));
      s += FUNC10(s, SPACECHARS);  /* skip trailing spaces */
      if (s == e) {  /* no invalid trailing characters? */
        FUNC8(L, (neg) ? -n : n);
        return 1;
      }  /* else not a number */
    }  /* else not a number */
  }
  FUNC7(L);  /* not a number */
  return 1;
}