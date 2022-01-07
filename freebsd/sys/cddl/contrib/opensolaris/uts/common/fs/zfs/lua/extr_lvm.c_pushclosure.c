
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_11__ {size_t idx; scalar_t__ instack; } ;
typedef TYPE_2__ Upvaldesc ;
typedef int UpVal ;
struct TYPE_10__ {int ** upvals; TYPE_3__* p; } ;
struct TYPE_13__ {TYPE_1__ l; } ;
struct TYPE_12__ {int sizeupvalues; TYPE_4__* cache; TYPE_2__* upvalues; } ;
typedef scalar_t__ StkId ;
typedef TYPE_3__ Proto ;
typedef TYPE_4__ Closure ;


 int luaC_barrierproto (int *,TYPE_3__*,TYPE_4__*) ;
 int * luaF_findupval (int *,scalar_t__) ;
 TYPE_4__* luaF_newLclosure (int *,int) ;
 int setclLvalue (int *,scalar_t__,TYPE_4__*) ;

__attribute__((used)) static void pushclosure (lua_State *L, Proto *p, UpVal **encup, StkId base,
                         StkId ra) {
  int nup = p->sizeupvalues;
  Upvaldesc *uv = p->upvalues;
  int i;
  Closure *ncl = luaF_newLclosure(L, nup);
  ncl->l.p = p;
  setclLvalue(L, ra, ncl);
  for (i = 0; i < nup; i++) {
    if (uv[i].instack)
      ncl->l.upvals[i] = luaF_findupval(L, base + uv[i].idx);
    else
      ncl->l.upvals[i] = encup[uv[i].idx];
  }
  luaC_barrierproto(L, p, ncl);
  p->cache = ncl;
}
