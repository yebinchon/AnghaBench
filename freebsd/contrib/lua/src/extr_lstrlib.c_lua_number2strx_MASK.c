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
typedef  int /*<<< orphan*/  lua_Number ;

/* Variables and functions */
 size_t SIZELENMOD ; 
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 char FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 

__attribute__((used)) static int FUNC4 (lua_State *L, char *buff, int sz,
                            const char *fmt, lua_Number x) {
  int n = FUNC1(buff, sz, x);
  if (fmt[SIZELENMOD] == 'A') {
    int i;
    for (i = 0; i < n; i++)
      buff[i] = FUNC2(FUNC3(buff[i]));
  }
  else if (fmt[SIZELENMOD] != 'a')
    return FUNC0(L, "modifiers for format '%%a'/'%%A' not implemented");
  return n;
}