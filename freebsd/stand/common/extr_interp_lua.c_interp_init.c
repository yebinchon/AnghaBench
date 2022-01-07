
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct interp_lua_softc {int * luap; } ;
typedef int lua_State ;
struct TYPE_3__ {scalar_t__ func; int name; } ;
typedef TYPE_1__ luaL_Reg ;


 int LDBG (char*) ;
 char* LOADER_LUA ;
 int abort () ;
 scalar_t__ interp_include (char const*) ;
 int interp_lua_realloc ;
 TYPE_1__* loadedlibs ;
 int luaL_requiref (int *,int ,scalar_t__,int) ;
 int * lua_newstate (int ,int *) ;
 int lua_pop (int *,int) ;
 struct interp_lua_softc lua_softc ;
 char* lua_tostring (int *,int) ;
 int printf (char*,...) ;
 int setenv (char*,char*,int) ;

void
interp_init(void)
{
 lua_State *luap;
 struct interp_lua_softc *softc = &lua_softc;
 const char *filename;
 const luaL_Reg *lib;

 setenv("script.lang", "lua", 1);
 LDBG("creating context");

 luap = lua_newstate(interp_lua_realloc, ((void*)0));
 if (luap == ((void*)0)) {
  printf("problem initializing the Lua interpreter\n");
  abort();
 }
 softc->luap = luap;


 for (lib = loadedlibs; lib->func; lib++) {
  luaL_requiref(luap, lib->name, lib->func, 1);
  lua_pop(luap, 1);
 }

 filename = LOADER_LUA;
 if (interp_include(filename) != 0) {
                const char *errstr = lua_tostring(luap, -1);
                errstr = errstr == ((void*)0) ? "unknown" : errstr;
                printf("Startup error in %s:\nLUA ERROR: %s.\n", filename, errstr);
                lua_pop(luap, 1);
 }
}
