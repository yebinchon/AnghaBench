
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {char* source; int linedefined; int lastlinedefined; char* what; int short_src; } ;
typedef TYPE_2__ lua_Debug ;
struct TYPE_8__ {TYPE_3__* p; } ;
struct TYPE_11__ {TYPE_1__ l; } ;
struct TYPE_10__ {int linedefined; int lastlinedefined; scalar_t__ source; } ;
typedef TYPE_3__ Proto ;
typedef TYPE_4__ Closure ;


 int LUA_IDSIZE ;
 char* getstr (scalar_t__) ;
 int luaO_chunkid (int ,char*,int ) ;
 scalar_t__ noLuaClosure (TYPE_4__*) ;

__attribute__((used)) static void funcinfo (lua_Debug *ar, Closure *cl) {
  if (noLuaClosure(cl)) {
    ar->source = "=[C]";
    ar->linedefined = -1;
    ar->lastlinedefined = -1;
    ar->what = "C";
  }
  else {
    Proto *p = cl->l.p;
    ar->source = p->source ? getstr(p->source) : "=?";
    ar->linedefined = p->linedefined;
    ar->lastlinedefined = p->lastlinedefined;
    ar->what = (ar->linedefined == 0) ? "main" : "Lua";
  }
  luaO_chunkid(ar->short_src, ar->source, LUA_IDSIZE);
}
