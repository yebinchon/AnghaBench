
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int lua_State ;


 int fnvlist_free (int *) ;
 int ** lua_touserdata (int *,int) ;

__attribute__((used)) static int
zcp_props_list_gc(lua_State *state)
{
 nvlist_t **props = lua_touserdata(state, 1);
 if (*props != ((void*)0))
  fnvlist_free(*props);
 return (0);
}
