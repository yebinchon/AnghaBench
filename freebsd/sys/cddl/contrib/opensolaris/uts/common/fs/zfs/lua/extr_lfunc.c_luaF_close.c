
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_15__ ;


struct TYPE_20__ {int * openupval; } ;
typedef TYPE_2__ lua_State ;
struct TYPE_21__ {int * allgc; } ;
typedef TYPE_3__ global_State ;
struct TYPE_19__ {int value; } ;
struct TYPE_22__ {scalar_t__ v; TYPE_1__ u; int * next; } ;
typedef TYPE_4__ UpVal ;
struct TYPE_18__ {int * next; } ;
typedef scalar_t__ StkId ;
typedef int GCObject ;


 TYPE_3__* G (TYPE_2__*) ;
 TYPE_15__* gch (int *) ;
 TYPE_4__* gco2uv (int *) ;
 int isblack (int *) ;
 scalar_t__ isdead (TYPE_3__*,int *) ;
 int luaC_checkupvalcolor (TYPE_3__*,TYPE_4__*) ;
 int luaF_freeupval (TYPE_2__*,TYPE_4__*) ;
 int lua_assert (int) ;
 int * obj2gco (TYPE_4__*) ;
 int setobj (TYPE_2__*,int *,int *) ;
 int unlinkupval (TYPE_4__*) ;

void luaF_close (lua_State *L, StkId level) {
  UpVal *uv;
  global_State *g = G(L);
  while (L->openupval != ((void*)0) && (uv = gco2uv(L->openupval))->v >= level) {
    GCObject *o = obj2gco(uv);
    lua_assert(!isblack(o) && uv->v != &uv->u.value);
    L->openupval = uv->next;
    if (isdead(g, o))
      luaF_freeupval(L, uv);
    else {
      unlinkupval(uv);
      setobj(L, &uv->u.value, uv->v);
      uv->v = &uv->u.value;
      gch(o)->next = g->allgc;
      g->allgc = o;
      luaC_checkupvalcolor(g, uv);
    }
  }
}
