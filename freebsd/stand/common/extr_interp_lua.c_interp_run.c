
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct interp_lua_softc {int * luap; } ;
typedef int lua_State ;


 int CMD_ERROR ;
 int CMD_OK ;
 int LDBG (char*) ;
 char* command_errmsg ;
 int free (char**) ;
 int interp_builtin_cmd (int,char**) ;
 int luaL_dostring (int *,char const*) ;
 int lua_getglobal (int *,char*) ;
 int lua_pcall (int *,int,int,int ) ;
 int lua_pop (int *,int) ;
 int lua_pushstring (int *,char*) ;
 struct interp_lua_softc lua_softc ;
 int lua_tointeger (int *,int) ;
 scalar_t__ parse (int*,char***,char const*) ;
 int printf (char*,...) ;

int
interp_run(const char *line)
{
 int argc, nargc;
 char **argv;
 lua_State *luap;
 struct interp_lua_softc *softc = &lua_softc;
 int status, ret;

 luap = softc->luap;
 LDBG("executing line...");
 if ((status = luaL_dostring(luap, line)) != 0) {
                lua_pop(luap, 1);






  command_errmsg = ((void*)0);
  if (parse(&argc, &argv, line) == 0) {
   lua_getglobal(luap, "cli_execute");
   for (nargc = 0; nargc < argc; ++nargc) {
    lua_pushstring(luap, argv[nargc]);
   }
   status = lua_pcall(luap, argc, 1, 0);
   ret = lua_tointeger(luap, 1);
   lua_pop(luap, 1);
   if (status != 0 || ret != 0) {
    status = interp_builtin_cmd(argc, argv);
   }
   if (status != 0) {
    if (command_errmsg != ((void*)0))
     printf("%s\n", command_errmsg);
    else
     printf("Command failed\n");
    status = CMD_ERROR;
   }
   free(argv);
  } else {
   printf("Failed to parse \'%s\'\n", line);
   status = CMD_ERROR;
  }
 }

 return (status == 0 ? CMD_OK : CMD_ERROR);
}
