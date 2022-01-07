
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int lua_State ;
typedef int buf ;


 int S_IFMT ;
 int lua_pushstring (int *,char*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void
push_st_permissions(lua_State *L, struct stat *sb)
{
 char buf[20];





 snprintf(buf, sizeof(buf), "%o", sb->st_mode & ~S_IFMT);
 lua_pushstring(L, buf);
}
