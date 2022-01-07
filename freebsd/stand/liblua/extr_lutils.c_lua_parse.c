
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int free (char**) ;
 int luaL_checkstring (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,char*) ;
 scalar_t__ parse (int*,char***,int ) ;

__attribute__((used)) static int
lua_parse(lua_State *L)
{
 int argc, nargc;
 char **argv;

 if (parse(&argc, &argv, luaL_checkstring(L, 1)) == 0) {
  for (nargc = 0; nargc < argc; ++nargc) {
   lua_pushstring(L, argv[nargc]);
  }
  free(argv);
  return nargc;
 }

 lua_pushnil(L);
 return 1;
}
