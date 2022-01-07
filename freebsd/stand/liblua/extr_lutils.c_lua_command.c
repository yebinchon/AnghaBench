
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int free (char**) ;
 int interp_builtin_cmd (int,char**) ;
 scalar_t__ luaL_checkstring (int *,int) ;
 int lua_gettop (int *) ;
 int lua_pushinteger (int *,int) ;
 char** malloc (int) ;

__attribute__((used)) static int
lua_command(lua_State *L)
{
 int i;
 int res = 1;
 int argc = lua_gettop(L);
 char **argv;

 argv = malloc(sizeof(char *) * (argc + 1));
 if (argv == ((void*)0))
  return 0;
 for (i = 0; i < argc; i++)
  argv[i] = (char *)(intptr_t)luaL_checkstring(L, i + 1);
 argv[argc] = ((void*)0);
 res = interp_builtin_cmd(argc, argv);
 free(argv);
 lua_pushinteger(L, res);

 return 1;
}
