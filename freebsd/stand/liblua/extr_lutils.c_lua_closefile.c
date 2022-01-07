
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int FILE ;


 scalar_t__ fclose (int *) ;
 int lua_gettop (int *) ;
 int lua_pushboolean (int *,int) ;
 scalar_t__ lua_touserdata (int *,int) ;

__attribute__((used)) static int
lua_closefile(lua_State *L)
{
 FILE ** f;
 if (lua_gettop(L) != 1) {
  lua_pushboolean(L, 0);
  return 1;
 }

 f = (FILE**)lua_touserdata(L, 1);
 if (f != ((void*)0) && *f != ((void*)0)) {
  lua_pushboolean(L, fclose(*f) == 0 ? 1 : 0);
  *f = ((void*)0);
 } else
  lua_pushboolean(L, 0);

 return 1;
}
