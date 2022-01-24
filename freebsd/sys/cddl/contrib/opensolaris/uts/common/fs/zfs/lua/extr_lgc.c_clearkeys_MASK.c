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
typedef  int /*<<< orphan*/  global_State ;
struct TYPE_5__ {int /*<<< orphan*/ * gclist; } ;
typedef  TYPE_1__ Table ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  GCObject ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9 (global_State *g, GCObject *l, GCObject *f) {
  for (; l != f; l = FUNC0(l)->gclist) {
    Table *h = FUNC0(l);
    Node *n, *limit = FUNC3(h);
    for (n = FUNC2(h, 0); n < limit; n++) {
      if (!FUNC8(FUNC4(n)) && (FUNC5(g, FUNC1(n)))) {
        FUNC7(FUNC4(n));  /* remove value ... */
        FUNC6(n);  /* and remove entry from table */
      }
    }
  }
}