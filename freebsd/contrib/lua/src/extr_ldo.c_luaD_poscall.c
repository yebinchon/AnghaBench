
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int ptrdiff_t ;
struct TYPE_15__ {int hookmask; TYPE_3__* ci; int oldpc; } ;
typedef TYPE_4__ lua_State ;
struct TYPE_16__ {int nresults; TYPE_3__* previous; int func; } ;
struct TYPE_12__ {int savedpc; } ;
struct TYPE_13__ {TYPE_1__ l; } ;
struct TYPE_14__ {TYPE_2__ u; } ;
typedef int StkId ;
typedef TYPE_5__ CallInfo ;


 int LUA_HOOKRET ;
 int LUA_MASKLINE ;
 int LUA_MASKRET ;
 int luaD_hook (TYPE_4__*,int ,int) ;
 int moveresults (TYPE_4__*,int ,int ,int,int) ;
 int restorestack (TYPE_4__*,int ) ;
 int savestack (TYPE_4__*,int ) ;

int luaD_poscall (lua_State *L, CallInfo *ci, StkId firstResult, int nres) {
  StkId res;
  int wanted = ci->nresults;
  if (L->hookmask & (LUA_MASKRET | LUA_MASKLINE)) {
    if (L->hookmask & LUA_MASKRET) {
      ptrdiff_t fr = savestack(L, firstResult);
      luaD_hook(L, LUA_HOOKRET, -1);
      firstResult = restorestack(L, fr);
    }
    L->oldpc = ci->previous->u.l.savedpc;
  }
  res = ci->func;
  L->ci = ci->previous;

  return moveresults(L, firstResult, res, nres, wanted);
}
