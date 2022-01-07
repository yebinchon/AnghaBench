
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {int ** upvals; int nupvalues; int * p; } ;
typedef TYPE_1__ LClosure ;
typedef int GCObject ;


 int LUA_TLCL ;
 int cast_byte (int) ;
 TYPE_1__* gco2lcl (int *) ;
 int * luaC_newobj (int *,int ,int ) ;
 int sizeLclosure (int) ;

LClosure *luaF_newLclosure (lua_State *L, int n) {
  GCObject *o = luaC_newobj(L, LUA_TLCL, sizeLclosure(n));
  LClosure *c = gco2lcl(o);
  c->p = ((void*)0);
  c->nupvalues = cast_byte(n);
  while (n--) c->upvals[n] = ((void*)0);
  return c;
}
