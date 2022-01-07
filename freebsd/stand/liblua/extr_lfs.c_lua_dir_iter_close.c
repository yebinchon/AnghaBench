
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int DIR ;


 int closedir (int *) ;
 scalar_t__ lua_touserdata (int *,int) ;

__attribute__((used)) static int
lua_dir_iter_close(lua_State *L)
{
 DIR *dp, **dpp;

 dpp = (DIR **)lua_touserdata(L, 1);
 dp = *dpp;
 if (dp == ((void*)0))
  return 0;

 closedir(dp);
 *dpp = ((void*)0);
 return 0;
}
