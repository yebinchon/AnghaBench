#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_15__ ;

/* Type definitions */
struct TYPE_20__ {int /*<<< orphan*/ * openupval; } ;
typedef  TYPE_2__ lua_State ;
struct TYPE_21__ {int /*<<< orphan*/ * allgc; } ;
typedef  TYPE_3__ global_State ;
struct TYPE_19__ {int /*<<< orphan*/  value; } ;
struct TYPE_22__ {scalar_t__ v; TYPE_1__ u; int /*<<< orphan*/ * next; } ;
typedef  TYPE_4__ UpVal ;
struct TYPE_18__ {int /*<<< orphan*/ * next; } ;
typedef  scalar_t__ StkId ;
typedef  int /*<<< orphan*/  GCObject ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_2__*) ; 
 TYPE_15__* FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 

void FUNC11 (lua_State *L, StkId level) {
  UpVal *uv;
  global_State *g = FUNC0(L);
  while (L->openupval != NULL && (uv = FUNC2(L->openupval))->v >= level) {
    GCObject *o = FUNC8(uv);
    FUNC7(!FUNC3(o) && uv->v != &uv->u.value);
    L->openupval = uv->next;  /* remove from `open' list */
    if (FUNC4(g, o))
      FUNC6(L, uv);  /* free upvalue */
    else {
      FUNC10(uv);  /* remove upvalue from 'uvhead' list */
      FUNC9(L, &uv->u.value, uv->v);  /* move value to upvalue slot */
      uv->v = &uv->u.value;  /* now current value lives here */
      FUNC1(o)->next = g->allgc;  /* link upvalue into 'allgc' list */
      g->allgc = o;
      FUNC5(g, uv);
    }
  }
}