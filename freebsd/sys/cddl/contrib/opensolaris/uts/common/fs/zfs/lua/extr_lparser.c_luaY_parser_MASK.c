#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_34__   TYPE_9__ ;
typedef  struct TYPE_33__   TYPE_8__ ;
typedef  struct TYPE_32__   TYPE_7__ ;
typedef  struct TYPE_31__   TYPE_6__ ;
typedef  struct TYPE_30__   TYPE_5__ ;
typedef  struct TYPE_29__   TYPE_4__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_20__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
struct TYPE_30__ {int /*<<< orphan*/  top; } ;
typedef  TYPE_5__ lua_State ;
typedef  int /*<<< orphan*/  ZIO ;
struct TYPE_25__ {TYPE_20__* p; } ;
struct TYPE_34__ {TYPE_1__ l; } ;
struct TYPE_29__ {scalar_t__ n; } ;
struct TYPE_28__ {scalar_t__ n; } ;
struct TYPE_27__ {scalar_t__ n; } ;
struct TYPE_33__ {TYPE_4__ label; TYPE_3__ gt; TYPE_2__ actvar; } ;
struct TYPE_32__ {int nups; int /*<<< orphan*/  prev; TYPE_20__* f; } ;
struct TYPE_31__ {int /*<<< orphan*/  fs; TYPE_8__* dyd; int /*<<< orphan*/ * buff; } ;
struct TYPE_26__ {int /*<<< orphan*/  source; } ;
typedef  int /*<<< orphan*/  Mbuffer ;
typedef  TYPE_6__ LexState ;
typedef  TYPE_7__ FuncState ;
typedef  TYPE_8__ Dyndata ;
typedef  TYPE_9__ Closure ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 TYPE_9__* FUNC1 (TYPE_5__*,int) ; 
 TYPE_20__* FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int /*<<< orphan*/ ,TYPE_9__*) ; 

Closure *FUNC8 (lua_State *L, ZIO *z, Mbuffer *buff,
                      Dyndata *dyd, const char *name, int firstchar) {
  LexState lexstate;
  FuncState funcstate;
  Closure *cl = FUNC1(L, 1);  /* create main closure */
  /* anchor closure (to avoid being collected) */
  FUNC7(L, L->top, cl);
  FUNC0(L);
  funcstate.f = cl->l.p = FUNC2(L);
  funcstate.f->source = FUNC3(L, name);  /* create and anchor TString */
  lexstate.buff = buff;
  lexstate.dyd = dyd;
  dyd->actvar.n = dyd->gt.n = dyd->label.n = 0;
  FUNC4(L, &lexstate, z, funcstate.f->source, firstchar);
  FUNC6(&lexstate, &funcstate);
  FUNC5(!funcstate.prev && funcstate.nups == 1 && !lexstate.fs);
  /* all scopes should be correctly finished */
  FUNC5(dyd->actvar.n == 0 && dyd->gt.n == 0 && dyd->label.n == 0);
  return cl;  /* it's on the stack too */
}