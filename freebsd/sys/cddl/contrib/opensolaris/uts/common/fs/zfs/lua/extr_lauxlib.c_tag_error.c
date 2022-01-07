
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_typename (int *,int) ;
 int typeerror (int *,int,int ) ;

__attribute__((used)) static void tag_error (lua_State *L, int narg, int tag) {
  typeerror(L, narg, lua_typename(L, tag));
}
