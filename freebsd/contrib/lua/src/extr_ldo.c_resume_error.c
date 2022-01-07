
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int top; } ;
typedef TYPE_1__ lua_State ;


 int LUA_ERRRUN ;
 int api_incr_top (TYPE_1__*) ;
 int luaS_new (TYPE_1__*,char const*) ;
 int lua_unlock (TYPE_1__*) ;
 int setsvalue2s (TYPE_1__*,int,int ) ;

__attribute__((used)) static int resume_error (lua_State *L, const char *msg, int narg) {
  L->top -= narg;
  setsvalue2s(L, L->top, luaS_new(L, msg));
  api_incr_top(L);
  lua_unlock(L);
  return LUA_ERRRUN;
}
