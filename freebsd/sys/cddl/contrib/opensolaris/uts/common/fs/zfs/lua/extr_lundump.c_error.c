
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int l_noret ;
struct TYPE_3__ {int L; int name; } ;
typedef TYPE_1__ LoadState ;


 int LUA_ERRSYNTAX ;
 int luaD_throw (int ,int ) ;
 int luaO_pushfstring (int ,char*,int ,char const*) ;

__attribute__((used)) static l_noret error(LoadState* S, const char* why)
{
 luaO_pushfstring(S->L,"%s: %s precompiled chunk",S->name,why);
 luaD_throw(S->L,LUA_ERRSYNTAX);
}
