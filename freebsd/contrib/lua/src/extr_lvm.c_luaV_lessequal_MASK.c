#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* ci; } ;
typedef  TYPE_2__ lua_State ;
struct TYPE_6__ {int /*<<< orphan*/  callstatus; } ;
typedef  int /*<<< orphan*/  TValue ;

/* Variables and functions */
 int /*<<< orphan*/  CIST_LEQ ; 
 int FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  TM_LE ; 
 int /*<<< orphan*/  TM_LT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*) ; 

int FUNC7 (lua_State *L, const TValue *l, const TValue *r) {
  int res;
  if (FUNC5(l) && FUNC5(r))  /* both operands are numbers? */
    return FUNC0(l, r);
  else if (FUNC6(l) && FUNC6(r))  /* both are strings? */
    return FUNC1(FUNC4(l), FUNC4(r)) <= 0;
  else if ((res = FUNC3(L, l, r, TM_LE)) >= 0)  /* try 'le' */
    return res;
  else {  /* try 'lt': */
    L->ci->callstatus |= CIST_LEQ;  /* mark it is doing 'lt' for 'le' */
    res = FUNC3(L, r, l, TM_LT);
    L->ci->callstatus ^= CIST_LEQ;  /* clear mark */
    if (res < 0)
      FUNC2(L, l, r);
    return !res;  /* result is negated */
  }
}