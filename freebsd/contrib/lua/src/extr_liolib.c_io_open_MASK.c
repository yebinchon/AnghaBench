#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_3__ {int /*<<< orphan*/ * f; } ;
typedef  TYPE_1__ LStream ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int,char*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7 (lua_State *L) {
  const char *filename = FUNC3(L, 1);
  const char *mode = FUNC5(L, 2, "r");
  LStream *p = FUNC6(L);
  const char *md = mode;  /* to traverse/check mode */
  FUNC2(L, FUNC1(md), 2, "invalid mode");
  p->f = FUNC0(filename, mode);
  return (p->f == NULL) ? FUNC4(L, 0, filename) : 1;
}