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
 int LUA_OK ; 
 int FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3 (lua_State *L, char **argv, int n) {
  int i;
  for (i = 1; i < n; i++) {
    int option = argv[i][1];
    FUNC2(argv[i][0] == '-');  /* already checked */
    if (option == 'e' || option == 'l') {
      int status;
      const char *extra = argv[i] + 2;  /* both options need an argument */
      if (*extra == '\0') extra = argv[++i];
      FUNC2(extra != NULL);
      status = (option == 'e')
               ? FUNC1(L, extra, "=(command line)")
               : FUNC0(L, extra);
      if (status != LUA_OK) return 0;
    }
  }
  return 1;
}