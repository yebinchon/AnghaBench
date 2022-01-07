
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int lua_State ;
typedef int luaL_Buffer ;
struct TYPE_6__ {int * L; } ;
typedef TYPE_1__ MatchState ;




 int add_s (TYPE_1__*,int *,char const*,char const*) ;
 int luaL_addvalue (int *) ;
 int luaL_error (int *,char*,int ) ;
 int luaL_typename (int *,int) ;
 int lua_call (int *,int,int) ;
 int lua_gettable (int *,int) ;
 int lua_isstring (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushlstring (int *,char const*,int) ;
 int lua_pushvalue (int *,int) ;
 int lua_toboolean (int *,int) ;
 int push_captures (TYPE_1__*,char const*,char const*) ;
 int push_onecapture (TYPE_1__*,int ,char const*,char const*) ;

__attribute__((used)) static void add_value (MatchState *ms, luaL_Buffer *b, const char *s,
                                       const char *e, int tr) {
  lua_State *L = ms->L;
  switch (tr) {
    case 129: {
      int n;
      lua_pushvalue(L, 3);
      n = push_captures(ms, s, e);
      lua_call(L, n, 1);
      break;
    }
    case 128: {
      push_onecapture(ms, 0, s, e);
      lua_gettable(L, 3);
      break;
    }
    default: {
      add_s(ms, b, s, e);
      return;
    }
  }
  if (!lua_toboolean(L, -1)) {
    lua_pop(L, 1);
    lua_pushlstring(L, s, e - s);
  }
  else if (!lua_isstring(L, -1))
    luaL_error(L, "invalid replacement value (a %s)", luaL_typename(L, -1));
  luaL_addvalue(b);
}
