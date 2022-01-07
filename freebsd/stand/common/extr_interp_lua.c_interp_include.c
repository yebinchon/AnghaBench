
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct interp_lua_softc {int luap; } ;


 int LDBG (char*,char const*) ;
 int luaL_dofile (int ,char const*) ;
 struct interp_lua_softc lua_softc ;

int
interp_include(const char *filename)
{
 struct interp_lua_softc *softc = &lua_softc;

 LDBG("loading file %s", filename);

 return (luaL_dofile(softc->luap, filename));
}
