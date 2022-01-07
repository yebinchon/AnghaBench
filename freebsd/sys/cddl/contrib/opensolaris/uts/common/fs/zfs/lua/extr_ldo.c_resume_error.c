
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int top; } ;
typedef TYPE_1__ lua_State ;
typedef int l_noret ;
typedef int StkId ;


 int api_incr_top (TYPE_1__*) ;
 int luaD_throw (TYPE_1__*,int) ;
 int luaS_new (TYPE_1__*,char const*) ;
 int setsvalue2s (TYPE_1__*,int ,int ) ;

__attribute__((used)) static l_noret resume_error (lua_State *L, const char *msg, StkId firstArg) {
  L->top = firstArg;
  setsvalue2s(L, L->top, luaS_new(L, msg));
  api_incr_top(L);
  luaD_throw(L, -1);
}
