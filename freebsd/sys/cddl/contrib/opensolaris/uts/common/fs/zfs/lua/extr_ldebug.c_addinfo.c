
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * ci; } ;
typedef TYPE_2__ lua_State ;
struct TYPE_8__ {TYPE_1__* p; } ;
struct TYPE_6__ {int * source; } ;
typedef int TString ;
typedef int CallInfo ;


 int LUA_IDSIZE ;
 TYPE_4__* ci_func (int *) ;
 int currentline (int *) ;
 int getstr (int *) ;
 scalar_t__ isLua (int *) ;
 int luaO_chunkid (char*,int ,int) ;
 int luaO_pushfstring (TYPE_2__*,char*,char*,int,char const*) ;

__attribute__((used)) static void addinfo (lua_State *L, const char *msg) {
  CallInfo *ci = L->ci;
  if (isLua(ci)) {
    char buff[LUA_IDSIZE];
    int line = currentline(ci);
    TString *src = ci_func(ci)->p->source;
    if (src)
      luaO_chunkid(buff, getstr(src), LUA_IDSIZE);
    else {
      buff[0] = '?'; buff[1] = '\0';
    }
    luaO_pushfstring(L, "%s:%d: %s", buff, line, msg);
  }
}
