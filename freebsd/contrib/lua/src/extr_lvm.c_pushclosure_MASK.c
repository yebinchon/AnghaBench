#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_11__ {size_t idx; scalar_t__ instack; } ;
typedef  TYPE_1__ Upvaldesc ;
struct TYPE_12__ {int /*<<< orphan*/  refcount; } ;
typedef  TYPE_2__ UpVal ;
struct TYPE_14__ {TYPE_2__** upvals; TYPE_3__* p; } ;
struct TYPE_13__ {int sizeupvalues; TYPE_4__* cache; TYPE_1__* upvalues; } ;
typedef  scalar_t__ StkId ;
typedef  TYPE_3__ Proto ;
typedef  TYPE_4__ LClosure ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,TYPE_4__*) ; 

__attribute__((used)) static void FUNC4 (lua_State *L, Proto *p, UpVal **encup, StkId base,
                         StkId ra) {
  int nup = p->sizeupvalues;
  Upvaldesc *uv = p->upvalues;
  int i;
  LClosure *ncl = FUNC2(L, nup);
  ncl->p = p;
  FUNC3(L, ra, ncl);  /* anchor new closure in stack */
  for (i = 0; i < nup; i++) {  /* fill in its upvalues */
    if (uv[i].instack)  /* upvalue refers to local variable? */
      ncl->upvals[i] = FUNC1(L, base + uv[i].idx);
    else  /* get upvalue from enclosing function */
      ncl->upvals[i] = encup[uv[i].idx];
    ncl->upvals[i]->refcount++;
    /* new closure is white, so we do not need a barrier here */
  }
  if (!FUNC0(p))  /* cache will not break GC invariant? */
    p->cache = ncl;  /* save it on cache for reuse */
}