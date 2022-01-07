
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int top; } ;
typedef TYPE_1__ lua_State ;
typedef int TValue ;
typedef int TMS ;


 int call_binTM (TYPE_1__*,int const*,int const*,int ,int ) ;
 int l_isfalse (int ) ;

__attribute__((used)) static int call_orderTM (lua_State *L, const TValue *p1, const TValue *p2,
                         TMS event) {
  if (!call_binTM(L, p1, p2, L->top, event))
    return -1;
  else
    return !l_isfalse(L->top);
}
