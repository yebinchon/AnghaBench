#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Table ;
struct TYPE_5__ {scalar_t__ tt; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  TYPE_1__ TString ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 scalar_t__ LUA_TSHRSTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  const* luaO_nilobject ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/  const*) ; 

const TValue *FUNC8 (Table *t, TString *key) {
  Node *n = FUNC4(t, key);
  FUNC5(key->tt == LUA_TSHRSTR);
  for (;;) {  /* check whether 'key' is somewhere in the chain */
    const TValue *k = FUNC1(n);
    if (FUNC7(k) && FUNC0(FUNC6(k), key))
      return FUNC3(n);  /* that's it */
    else {
      int nx = FUNC2(n);
      if (nx == 0)
        return luaO_nilobject;  /* not found */
      n += nx;
    }
  }
}