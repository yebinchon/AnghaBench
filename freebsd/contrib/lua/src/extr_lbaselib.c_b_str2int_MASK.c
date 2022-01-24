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
typedef  scalar_t__ lua_Integer ;

/* Variables and functions */
 int /*<<< orphan*/  SPACECHARS ; 
 scalar_t__ FUNC0 (unsigned char) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 char FUNC3 (unsigned char) ; 

__attribute__((used)) static const char *FUNC4 (const char *s, int base, lua_Integer *pn) {
  lua_Unsigned n = 0;
  int neg = 0;
  s += FUNC2(s, SPACECHARS);  /* skip initial spaces */
  if (*s == '-') { s++; neg = 1; }  /* handle signal */
  else if (*s == '+') s++;
  if (!FUNC0((unsigned char)*s))  /* no digit? */
    return NULL;
  do {
    int digit = (FUNC1((unsigned char)*s)) ? *s - '0'
                   : (FUNC3((unsigned char)*s) - 'A') + 10;
    if (digit >= base) return NULL;  /* invalid numeral */
    n = n * base + digit;
    s++;
  } while (FUNC0((unsigned char)*s));
  s += FUNC2(s, SPACECHARS);  /* skip trailing spaces */
  *pn = (lua_Integer)((neg) ? (0u - n) : n);
  return s;
}