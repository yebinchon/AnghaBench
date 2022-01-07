
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int Table ;
typedef int TValue ;
typedef int TMS ;


 int * fasttm (int *,int *,int ) ;
 scalar_t__ luaV_rawequalobj (int const*,int const*) ;

__attribute__((used)) static const TValue *get_equalTM (lua_State *L, Table *mt1, Table *mt2,
                                  TMS event) {
  const TValue *tm1 = fasttm(L, mt1, event);
  const TValue *tm2;
  if (tm1 == ((void*)0)) return ((void*)0);
  if (mt1 == mt2) return tm1;
  tm2 = fasttm(L, mt2, event);
  if (tm2 == ((void*)0)) return ((void*)0);
  if (luaV_rawequalobj(tm1, tm2))
    return tm1;
  return ((void*)0);
}
