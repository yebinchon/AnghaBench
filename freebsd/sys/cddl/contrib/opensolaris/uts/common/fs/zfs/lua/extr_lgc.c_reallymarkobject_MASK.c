#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_14__ ;
typedef  struct TYPE_18__   TYPE_13__ ;
typedef  struct TYPE_17__   TYPE_12__ ;
typedef  struct TYPE_16__   TYPE_11__ ;
typedef  struct TYPE_15__   TYPE_10__ ;

/* Type definitions */
typedef  int lu_mem ;
struct TYPE_21__ {int /*<<< orphan*/  GCmemtrav; int /*<<< orphan*/ * gray; } ;
typedef  TYPE_2__ global_State ;
struct TYPE_20__ {int /*<<< orphan*/  value; } ;
struct TYPE_22__ {TYPE_1__ u; int /*<<< orphan*/ * v; } ;
typedef  TYPE_3__ UpVal ;
typedef  int /*<<< orphan*/  Table ;
struct TYPE_23__ {int /*<<< orphan*/ * env; int /*<<< orphan*/ * metatable; } ;
struct TYPE_19__ {int tt; } ;
struct TYPE_18__ {int /*<<< orphan*/ * gclist; } ;
struct TYPE_17__ {int /*<<< orphan*/ * gclist; } ;
struct TYPE_16__ {int /*<<< orphan*/ * gclist; } ;
struct TYPE_15__ {int /*<<< orphan*/ * gclist; } ;
typedef  int /*<<< orphan*/  GCObject ;

/* Variables and functions */
#define  LUA_TCCL 136 
#define  LUA_TLCL 135 
#define  LUA_TLNGSTR 134 
#define  LUA_TPROTO 133 
#define  LUA_TSHRSTR 132 
#define  LUA_TTABLE 131 
#define  LUA_TTHREAD 130 
#define  LUA_TUPVAL 129 
#define  LUA_TUSERDATA 128 
 TYPE_14__* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_13__* FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_12__* FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_11__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_10__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC17 (global_State *g, GCObject *o) {
  lu_mem size;
  FUNC16(o);
  switch (FUNC0(o)->tt) {
    case LUA_TSHRSTR:
    case LUA_TLNGSTR: {
      size = FUNC14(FUNC6(o));
      break;  /* nothing else to mark; make it black */
    }
    case LUA_TUSERDATA: {
      Table *mt = FUNC7(o)->metatable;
      FUNC12(g, mt);
      FUNC12(g, FUNC7(o)->env);
      size = FUNC15(FUNC7(o));
      break;
    }
    case LUA_TUPVAL: {
      UpVal *uv = FUNC8(o);
      FUNC13(g, uv->v);
      if (uv->v != &uv->u.value)  /* open? */
        return;  /* open upvalues remain gray */
      size = sizeof(UpVal);
      break;
    }
    case LUA_TLCL: {
      FUNC2(o)->gclist = g->gray;
      g->gray = o;
      return;
    }
    case LUA_TCCL: {
      FUNC1(o)->gclist = g->gray;
      g->gray = o;
      return;
    }
    case LUA_TTABLE: {
      FUNC10(FUNC4(o), &g->gray);
      return;
    }
    case LUA_TTHREAD: {
      FUNC5(o)->gclist = g->gray;
      g->gray = o;
      return;
    }
    case LUA_TPROTO: {
      FUNC3(o)->gclist = g->gray;
      g->gray = o;
      return;
    }
    default: FUNC11(0); return;
  }
  FUNC9(o);
  g->GCmemtrav += size;
}