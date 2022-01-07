
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef int lua_State ;


 char* luaL_checklstring (int *,int,scalar_t__*) ;
 int putchar (unsigned char) ;

__attribute__((used)) static int
lua_printc(lua_State *L)
{
 ssize_t cur, l;
 const char *s = luaL_checklstring(L, 1, &l);

 for (cur = 0; cur < l; ++cur)
  putchar((unsigned char)*(s++));

 return 1;
}
