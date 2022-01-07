
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {scalar_t__ matchdepth; char const* src_init; char const* src_end; char const* p_end; scalar_t__ level; int * L; } ;
typedef TYPE_1__ MatchState ;


 scalar_t__ MAXCCALLS ;
 char* lmemfind (char const*,size_t,char const*,size_t) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int luaL_optinteger (int *,int,int) ;
 int lua_assert (int) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushnil (int *) ;
 scalar_t__ lua_toboolean (int *,int) ;
 char* match (TYPE_1__*,char const*,char const*) ;
 scalar_t__ nospecials (char const*,size_t) ;
 size_t posrelat (int ,size_t) ;
 int push_captures (TYPE_1__*,char const*,char const*) ;

__attribute__((used)) static int str_find_aux (lua_State *L, int find) {
  size_t ls, lp;
  const char *s = luaL_checklstring(L, 1, &ls);
  const char *p = luaL_checklstring(L, 2, &lp);
  size_t init = posrelat(luaL_optinteger(L, 3, 1), ls);
  if (init < 1) init = 1;
  else if (init > ls + 1) {
    lua_pushnil(L);
    return 1;
  }

  if (find && (lua_toboolean(L, 4) || nospecials(p, lp))) {

    const char *s2 = lmemfind(s + init - 1, ls - init + 1, p, lp);
    if (s2) {
      lua_pushinteger(L, s2 - s + 1);
      lua_pushinteger(L, s2 - s + lp);
      return 2;
    }
  }
  else {
    MatchState ms;
    const char *s1 = s + init - 1;
    int anchor = (*p == '^');
    if (anchor) {
      p++; lp--;
    }
    ms.L = L;
    ms.matchdepth = MAXCCALLS;
    ms.src_init = s;
    ms.src_end = s + ls;
    ms.p_end = p + lp;
    do {
      const char *res;
      ms.level = 0;
      lua_assert(ms.matchdepth == MAXCCALLS);
      if ((res=match(&ms, s1, p)) != ((void*)0)) {
        if (find) {
          lua_pushinteger(L, s1 - s + 1);
          lua_pushinteger(L, res - s);
          return push_captures(&ms, ((void*)0), 0) + 2;
        }
        else
          return push_captures(&ms, s1, res);
      }
    } while (s1++ < ms.src_end && !anchor);
  }
  lua_pushnil(L);
  return 1;
}
