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
typedef  int /*<<< orphan*/  lua_Number ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char**) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char**) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

int FUNC5 (const char *s, size_t len, lua_Number *result) {
  char *endptr;
  if (FUNC4(s, "nN"))  /* reject 'inf' and 'nan' */
    return 0;
  else if (FUNC4(s, "xX"))  /* hexa? */
    *result = FUNC3(s, &endptr);
  else
    *result = FUNC2(s, &endptr);
  if (endptr == s) return 0;  /* nothing recognized */
  while (FUNC1(FUNC0(*endptr))) endptr++;
  return (endptr == s + len);  /* OK if no trailing characters */
}