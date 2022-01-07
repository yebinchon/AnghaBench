
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int global_State ;
struct TYPE_4__ {int v; } ;
typedef TYPE_1__ UpVal ;
typedef int GCObject ;


 int gray2black (int *) ;
 int isblack (int *) ;
 scalar_t__ isgray (int *) ;
 int issweepphase (int *) ;
 scalar_t__ keepinvariant (int *) ;
 int lua_assert (int) ;
 int makewhite (int *,int *) ;
 int markvalue (int *,int ) ;
 int * obj2gco (TYPE_1__*) ;
 int resetoldbit (int *) ;

void luaC_checkupvalcolor (global_State *g, UpVal *uv) {
  GCObject *o = obj2gco(uv);
  lua_assert(!isblack(o));
  if (isgray(o)) {
    if (keepinvariant(g)) {
      resetoldbit(o);
      gray2black(o);
      markvalue(g, uv->v);
    }
    else {
      lua_assert(issweepphase(g));
      makewhite(g, o);
    }
  }
}
