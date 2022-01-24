#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * ci; int /*<<< orphan*/  base_ci; } ;
typedef  TYPE_1__ lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5 (lua_State *L, void *ud) {
  FUNC0(ud);
  for (;;) {
    if (L->ci == &L->base_ci)  /* stack is empty? */
      return;  /* coroutine finished normally */
    if (!FUNC2(L->ci))  /* C function? */
      FUNC1(L);
    else {  /* Lua function */
      FUNC4(L);  /* finish interrupted instruction */
      FUNC3(L);  /* execute down to higher C 'boundary' */
    }
  }
}