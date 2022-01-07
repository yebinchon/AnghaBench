
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int IdxT ;


 int luaL_error (int *,char*) ;
 scalar_t__ lua_geti (int *,int,int) ;
 int lua_pop (int *,int) ;
 int set2 (int *,int,int) ;
 int sort_comp (int *,int,int) ;

__attribute__((used)) static IdxT partition (lua_State *L, IdxT lo, IdxT up) {
  IdxT i = lo;
  IdxT j = up - 1;

  for (;;) {

    while (lua_geti(L, 1, ++i), sort_comp(L, -1, -2)) {
      if (i == up - 1)
        luaL_error(L, "invalid order function for sorting");
      lua_pop(L, 1);
    }


    while (lua_geti(L, 1, --j), sort_comp(L, -3, -1)) {
      if (j < i)
        luaL_error(L, "invalid order function for sorting");
      lua_pop(L, 1);
    }

    if (j < i) {

      lua_pop(L, 1);

      set2(L, up - 1, i);
      return i;
    }

    set2(L, i, j);
  }
}
