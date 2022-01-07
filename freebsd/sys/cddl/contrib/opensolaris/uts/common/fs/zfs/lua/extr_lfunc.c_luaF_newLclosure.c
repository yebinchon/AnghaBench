
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_5__ {int ** upvals; int nupvalues; int * p; } ;
struct TYPE_6__ {TYPE_1__ l; } ;
struct TYPE_7__ {TYPE_2__ cl; } ;
typedef TYPE_2__ Closure ;


 int LUA_TLCL ;
 int cast_byte (int) ;
 TYPE_4__* luaC_newobj (int *,int ,int ,int *,int ) ;
 int sizeLclosure (int) ;

Closure *luaF_newLclosure (lua_State *L, int n) {
  Closure *c = &luaC_newobj(L, LUA_TLCL, sizeLclosure(n), ((void*)0), 0)->cl;
  c->l.p = ((void*)0);
  c->l.nupvalues = cast_byte(n);
  while (n--) c->l.upvals[n] = ((void*)0);
  return c;
}
