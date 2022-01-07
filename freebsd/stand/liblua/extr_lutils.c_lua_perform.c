
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int free (char**) ;
 int interp_builtin_cmd (int,char**) ;
 int luaL_checkstring (int *,int) ;
 int lua_pushinteger (int *,int) ;
 scalar_t__ parse (int*,char***,int ) ;

__attribute__((used)) static int
lua_perform(lua_State *L)
{
 int argc;
 char **argv;
 int res = 1;

 if (parse(&argc, &argv, luaL_checkstring(L, 1)) == 0) {
  res = interp_builtin_cmd(argc, argv);
  free(argv);
 }
 lua_pushinteger(L, res);

 return 1;
}
