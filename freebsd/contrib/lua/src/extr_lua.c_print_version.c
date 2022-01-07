
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LUA_COPYRIGHT ;
 int lua_writeline () ;
 int lua_writestring (int ,int ) ;
 int strlen (int ) ;

__attribute__((used)) static void print_version (void) {
  lua_writestring(LUA_COPYRIGHT, strlen(LUA_COPYRIGHT));
  lua_writeline();
}
