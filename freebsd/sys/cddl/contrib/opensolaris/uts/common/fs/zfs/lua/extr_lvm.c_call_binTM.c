
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int TValue ;
typedef int TMS ;
typedef int StkId ;


 int callTM (int *,int const*,int const*,int const*,int ,int) ;
 int * luaT_gettmbyobj (int *,int const*,int ) ;
 scalar_t__ ttisnil (int const*) ;

__attribute__((used)) static int call_binTM (lua_State *L, const TValue *p1, const TValue *p2,
                       StkId res, TMS event) {
  const TValue *tm = luaT_gettmbyobj(L, p1, event);
  if (ttisnil(tm))
    tm = luaT_gettmbyobj(L, p2, event);
  if (ttisnil(tm)) return 0;
  callTM(L, tm, p1, p2, res, 1);
  return 1;
}
