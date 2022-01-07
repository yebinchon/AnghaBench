
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_5__ {size_t len; int * env; int * metatable; } ;
struct TYPE_6__ {TYPE_1__ uv; } ;
typedef TYPE_2__ Udata ;
typedef int Table ;
struct TYPE_7__ {TYPE_2__ u; } ;


 int LUA_TUSERDATA ;
 int MAX_SIZET ;
 TYPE_4__* luaC_newobj (int *,int ,int,int *,int ) ;
 int luaM_toobig (int *) ;

Udata *luaS_newudata (lua_State *L, size_t s, Table *e) {
  Udata *u;
  if (s > MAX_SIZET - sizeof(Udata))
    luaM_toobig(L);
  u = &luaC_newobj(L, LUA_TUSERDATA, sizeof(Udata) + s, ((void*)0), 0)->u;
  u->uv.len = s;
  u->uv.metatable = ((void*)0);
  u->uv.env = e;
  return u;
}
