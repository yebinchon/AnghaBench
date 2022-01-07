
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dirent {int d_name; } ;
typedef int lua_State ;
struct TYPE_3__ {int fd; } ;
typedef TYPE_1__ DIR ;


 int DIR_METATABLE ;
 int closedir (TYPE_1__*) ;
 int luaL_argcheck (int *,int ,int,char*) ;
 scalar_t__ luaL_checkudata (int *,int,int ) ;
 int lua_pushstring (int *,int ) ;
 struct dirent* readdirfd (int ) ;

__attribute__((used)) static int
lua_dir_iter_next(lua_State *L)
{
 struct dirent *entry;
 DIR *dp, **dpp;

 dpp = (DIR **)luaL_checkudata(L, 1, DIR_METATABLE);
 dp = *dpp;
 luaL_argcheck(L, dp != ((void*)0), 1, "closed directory");

 entry = readdirfd(dp->fd);
 if (entry == ((void*)0)) {
  closedir(dp);
  *dpp = ((void*)0);
  return 0;
 }

 lua_pushstring(L, entry->d_name);
 return 1;
}
