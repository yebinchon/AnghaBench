
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* ci; } ;
typedef TYPE_2__ lua_State ;
struct TYPE_8__ {int func; } ;
typedef int TValue ;


 int LUA_REGISTRYINDEX ;
 int api_checkvalidindex (TYPE_2__*,int *) ;
 int clCvalue (int ) ;
 int * index2addr (TYPE_2__*,int) ;
 int luaC_barrier (TYPE_2__*,int ,int *) ;
 int setobj (TYPE_2__*,int *,int *) ;

__attribute__((used)) static void moveto (lua_State *L, TValue *fr, int idx) {
  TValue *to = index2addr(L, idx);
  api_checkvalidindex(L, to);
  setobj(L, to, fr);
  if (idx < LUA_REGISTRYINDEX)
    luaC_barrier(L, clCvalue(L->ci->func), fr);


}
