
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_23__ ;
typedef struct TYPE_24__ TYPE_1__ ;


struct TYPE_24__ {int * gclist; } ;
typedef TYPE_1__ lua_State ;
typedef scalar_t__ lu_mem ;
struct TYPE_26__ {int GCmemtrav; int * gray; int * grayagain; } ;
typedef TYPE_2__ global_State ;
struct TYPE_27__ {int * gclist; } ;
typedef TYPE_3__ Table ;
struct TYPE_30__ {int * gclist; } ;
struct TYPE_29__ {int * gclist; } ;
struct TYPE_28__ {int * gclist; } ;
struct TYPE_25__ {int tt; } ;
typedef TYPE_4__ Proto ;
typedef TYPE_5__ LClosure ;
typedef int GCObject ;
typedef TYPE_6__ CClosure ;







 int black2gray (int *) ;
 TYPE_23__* gch (int *) ;
 TYPE_6__* gco2ccl (int *) ;
 TYPE_5__* gco2lcl (int *) ;
 TYPE_4__* gco2p (int *) ;
 TYPE_3__* gco2t (int *) ;
 TYPE_1__* gco2th (int *) ;
 int gray2black (int *) ;
 int isgray (int *) ;
 int lua_assert (int ) ;
 scalar_t__ traverseCclosure (TYPE_2__*,TYPE_6__*) ;
 scalar_t__ traverseLclosure (TYPE_2__*,TYPE_5__*) ;
 scalar_t__ traverseproto (TYPE_2__*,TYPE_4__*) ;
 scalar_t__ traversestack (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ traversetable (TYPE_2__*,TYPE_3__*) ;

__attribute__((used)) static void propagatemark (global_State *g) {
  lu_mem size;
  GCObject *o = g->gray;
  lua_assert(isgray(o));
  gray2black(o);
  switch (gch(o)->tt) {
    case 129: {
      Table *h = gco2t(o);
      g->gray = h->gclist;
      size = traversetable(g, h);
      break;
    }
    case 131: {
      LClosure *cl = gco2lcl(o);
      g->gray = cl->gclist;
      size = traverseLclosure(g, cl);
      break;
    }
    case 132: {
      CClosure *cl = gco2ccl(o);
      g->gray = cl->gclist;
      size = traverseCclosure(g, cl);
      break;
    }
    case 128: {
      lua_State *th = gco2th(o);
      g->gray = th->gclist;
      th->gclist = g->grayagain;
      g->grayagain = o;
      black2gray(o);
      size = traversestack(g, th);
      break;
    }
    case 130: {
      Proto *p = gco2p(o);
      g->gray = p->gclist;
      size = traverseproto(g, p);
      break;
    }
    default: lua_assert(0); return;
  }
  g->GCmemtrav += size;
}
