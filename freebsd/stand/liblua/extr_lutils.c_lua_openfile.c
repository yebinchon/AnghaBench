
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int FILE ;


 int * fopen (char const*,char const*) ;
 int lua_gettop (int *) ;
 scalar_t__ lua_newuserdata (int *,int) ;
 int lua_pushnil (int *) ;
 char* lua_tostring (int *,int) ;

__attribute__((used)) static int
lua_openfile(lua_State *L)
{
 const char *mode, *str;
 int nargs;

 nargs = lua_gettop(L);
 if (nargs < 1 || nargs > 2) {
  lua_pushnil(L);
  return 1;
 }
 str = lua_tostring(L, 1);
 mode = "r";
 if (nargs > 1) {
  mode = lua_tostring(L, 2);
  if (mode == ((void*)0)) {
   lua_pushnil(L);
   return 1;
  }
 }
 FILE * f = fopen(str, mode);
 if (f != ((void*)0)) {
  FILE ** ptr = (FILE**)lua_newuserdata(L, sizeof(FILE**));
  *ptr = f;
 } else
  lua_pushnil(L);
 return 1;
}
