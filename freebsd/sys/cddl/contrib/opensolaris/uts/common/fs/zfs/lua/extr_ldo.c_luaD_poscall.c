
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int ptrdiff_t ;
struct TYPE_12__ {int hookmask; scalar_t__ top; TYPE_4__* ci; int oldpc; } ;
typedef TYPE_3__ lua_State ;
struct TYPE_10__ {int savedpc; } ;
struct TYPE_11__ {TYPE_1__ l; } ;
struct TYPE_13__ {scalar_t__ func; int nresults; struct TYPE_13__* previous; TYPE_2__ u; } ;
typedef scalar_t__ StkId ;
typedef TYPE_4__ CallInfo ;


 int LUA_HOOKRET ;
 int LUA_MASKLINE ;
 int LUA_MASKRET ;
 int LUA_MULTRET ;
 int luaD_hook (TYPE_3__*,int ,int) ;
 scalar_t__ restorestack (TYPE_3__*,int ) ;
 int savestack (TYPE_3__*,scalar_t__) ;
 int setnilvalue (int ) ;
 int setobjs2s (TYPE_3__*,int ,int ) ;

int luaD_poscall (lua_State *L, StkId firstResult) {
  StkId res;
  int wanted, i;
  CallInfo *ci = L->ci;
  if (L->hookmask & (LUA_MASKRET | LUA_MASKLINE)) {
    if (L->hookmask & LUA_MASKRET) {
      ptrdiff_t fr = savestack(L, firstResult);
      luaD_hook(L, LUA_HOOKRET, -1);
      firstResult = restorestack(L, fr);
    }
    L->oldpc = ci->previous->u.l.savedpc;
  }
  res = ci->func;
  wanted = ci->nresults;
  L->ci = ci = ci->previous;

  for (i = wanted; i != 0 && firstResult < L->top; i--)
    setobjs2s(L, res++, firstResult++);
  while (i-- > 0)
    setnilvalue(res++);
  L->top = res;
  return (wanted - LUA_MULTRET);
}
