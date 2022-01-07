
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ top; } ;
typedef TYPE_1__ lua_State ;


 int UNUSED (void*) ;
 int luaD_call (TYPE_1__*,scalar_t__,int ,int ) ;

__attribute__((used)) static void dothecall (lua_State *L, void *ud) {
  UNUSED(ud);
  luaD_call(L, L->top - 2, 0, 0);
}
