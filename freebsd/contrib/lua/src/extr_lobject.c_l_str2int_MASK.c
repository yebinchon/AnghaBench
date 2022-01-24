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
typedef  int lua_Unsigned ;
typedef  int /*<<< orphan*/  lua_Integer ;

/* Variables and functions */
 int MAXBY10 ; 
 int MAXLASTD ; 
 int /*<<< orphan*/  FUNC0 (char const) ; 
 int FUNC1 (char const**) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (char const) ; 

__attribute__((used)) static const char *FUNC7 (const char *s, lua_Integer *result) {
  lua_Unsigned a = 0;
  int empty = 1;
  int neg;
  while (FUNC4(FUNC0(*s))) s++;  /* skip initial spaces */
  neg = FUNC1(&s);
  if (s[0] == '0' &&
      (s[1] == 'x' || s[1] == 'X')) {  /* hex? */
    s += 2;  /* skip '0x' */
    for (; FUNC5(FUNC0(*s)); s++) {
      a = a * 16 + FUNC6(*s);
      empty = 0;
    }
  }
  else {  /* decimal */
    for (; FUNC3(FUNC0(*s)); s++) {
      int d = *s - '0';
      if (a >= MAXBY10 && (a > MAXBY10 || d > MAXLASTD + neg))  /* overflow? */
        return NULL;  /* do not accept it (as integer) */
      a = a * 10 + d;
      empty = 0;
    }
  }
  while (FUNC4(FUNC0(*s))) s++;  /* skip trailing spaces */
  if (empty || *s != '\0') return NULL;  /* something wrong in the numeral */
  else {
    *result = FUNC2((neg) ? 0u - a : a);
    return s;
  }
}