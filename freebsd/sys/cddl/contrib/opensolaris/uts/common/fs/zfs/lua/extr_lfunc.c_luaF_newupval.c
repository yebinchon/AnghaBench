
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_5__ {int value; } ;
struct TYPE_6__ {int * v; TYPE_1__ u; } ;
typedef TYPE_2__ UpVal ;
struct TYPE_7__ {TYPE_2__ uv; } ;


 int LUA_TUPVAL ;
 TYPE_4__* luaC_newobj (int *,int ,int,int *,int ) ;
 int setnilvalue (int *) ;

UpVal *luaF_newupval (lua_State *L) {
  UpVal *uv = &luaC_newobj(L, LUA_TUPVAL, sizeof(UpVal), ((void*)0), 0)->uv;
  uv->v = &uv->u.value;
  setnilvalue(uv->v);
  return uv;
}
