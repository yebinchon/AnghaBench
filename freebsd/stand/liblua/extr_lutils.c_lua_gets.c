
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_pushstring (int *,char*) ;
 int ngets (char*,int) ;

__attribute__((used)) static int
lua_gets(lua_State *L)
{
 char buf[129];

 ngets(buf, 128);
 lua_pushstring(L, buf);
 return 1;
}
