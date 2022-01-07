
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_2__ {int seed; } ;
typedef int TString ;


 TYPE_1__* G (int *) ;
 size_t LUAI_MAXSHORTLEN ;
 int LUA_TLNGSTR ;
 int MAX_SIZET ;
 int * createstrobj (int *,char const*,size_t,int ,int ,int *) ;
 int * internshrstr (int *,char const*,size_t) ;
 int luaM_toobig (int *) ;

TString *luaS_newlstr (lua_State *L, const char *str, size_t l) {
  if (l <= LUAI_MAXSHORTLEN)
    return internshrstr(L, str, l);
  else {
    if (l + 1 > (MAX_SIZET - sizeof(TString))/sizeof(char))
      luaM_toobig(L);
    return createstrobj(L, str, l, LUA_TLNGSTR, G(L)->seed, ((void*)0));
  }
}
