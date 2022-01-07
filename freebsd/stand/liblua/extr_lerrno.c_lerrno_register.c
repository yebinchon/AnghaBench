
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int err_name; int err_num; } ;


 TYPE_1__* errnoconstants ;
 int lua_pushinteger (int *,int ) ;
 int lua_setfield (int *,int,int ) ;
 size_t nitems (TYPE_1__*) ;

__attribute__((used)) static void
lerrno_register(lua_State *L)
{
 size_t i;

 for (i = 0; i < nitems(errnoconstants); i++) {
  lua_pushinteger(L, errnoconstants[i].err_num);
  lua_setfield(L, -2, errnoconstants[i].err_name);
 }
}
