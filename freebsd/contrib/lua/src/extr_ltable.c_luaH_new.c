
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_5__ {scalar_t__ sizearray; int * array; int flags; int * metatable; } ;
typedef TYPE_1__ Table ;
typedef int GCObject ;


 int LUA_TTABLE ;
 int cast_byte (int ) ;
 TYPE_1__* gco2t (int *) ;
 int * luaC_newobj (int *,int ,int) ;
 int setnodevector (int *,TYPE_1__*,int ) ;

Table *luaH_new (lua_State *L) {
  GCObject *o = luaC_newobj(L, LUA_TTABLE, sizeof(Table));
  Table *t = gco2t(o);
  t->metatable = ((void*)0);
  t->flags = cast_byte(~0);
  t->array = ((void*)0);
  t->sizearray = 0;
  setnodevector(L, t, 0);
  return t;
}
