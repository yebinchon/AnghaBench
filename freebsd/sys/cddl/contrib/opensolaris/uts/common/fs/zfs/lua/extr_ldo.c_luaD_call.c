
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int nCcalls; int nny; } ;
typedef TYPE_1__ lua_State ;
typedef int StkId ;


 int LUAI_MAXCCALLS ;
 int LUA_ERRERR ;
 int luaD_precall (TYPE_1__*,int ,int) ;
 int luaD_throw (TYPE_1__*,int ) ;
 int luaG_runerror (TYPE_1__*,char*) ;
 int luaV_execute (TYPE_1__*) ;

void luaD_call (lua_State *L, StkId func, int nResults, int allowyield) {
  if (++L->nCcalls >= LUAI_MAXCCALLS) {
    if (L->nCcalls == LUAI_MAXCCALLS)
      luaG_runerror(L, "C stack overflow");
    else if (L->nCcalls >= (LUAI_MAXCCALLS + (LUAI_MAXCCALLS>>3)))
      luaD_throw(L, LUA_ERRERR);
  }
  if (!allowyield) L->nny++;
  if (!luaD_precall(L, func, nResults))
    luaV_execute(L);
  if (!allowyield) L->nny--;
  L->nCcalls--;
}
