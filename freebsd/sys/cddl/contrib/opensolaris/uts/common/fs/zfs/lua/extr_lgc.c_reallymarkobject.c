
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_14__ ;
typedef struct TYPE_18__ TYPE_13__ ;
typedef struct TYPE_17__ TYPE_12__ ;
typedef struct TYPE_16__ TYPE_11__ ;
typedef struct TYPE_15__ TYPE_10__ ;


typedef int lu_mem ;
struct TYPE_21__ {int GCmemtrav; int * gray; } ;
typedef TYPE_2__ global_State ;
struct TYPE_20__ {int value; } ;
struct TYPE_22__ {TYPE_1__ u; int * v; } ;
typedef TYPE_3__ UpVal ;
typedef int Table ;
struct TYPE_23__ {int * env; int * metatable; } ;
struct TYPE_19__ {int tt; } ;
struct TYPE_18__ {int * gclist; } ;
struct TYPE_17__ {int * gclist; } ;
struct TYPE_16__ {int * gclist; } ;
struct TYPE_15__ {int * gclist; } ;
typedef int GCObject ;
 TYPE_14__* gch (int *) ;
 TYPE_13__* gco2ccl (int *) ;
 TYPE_12__* gco2lcl (int *) ;
 TYPE_11__* gco2p (int *) ;
 int gco2t (int *) ;
 TYPE_10__* gco2th (int *) ;
 int gco2ts (int *) ;
 TYPE_4__* gco2u (int *) ;
 TYPE_3__* gco2uv (int *) ;
 int gray2black (int *) ;
 int linktable (int ,int **) ;
 int lua_assert (int ) ;
 int markobject (TYPE_2__*,int *) ;
 int markvalue (TYPE_2__*,int *) ;
 int sizestring (int ) ;
 int sizeudata (TYPE_4__*) ;
 int white2gray (int *) ;

__attribute__((used)) static void reallymarkobject (global_State *g, GCObject *o) {
  lu_mem size;
  white2gray(o);
  switch (gch(o)->tt) {
    case 132:
    case 134: {
      size = sizestring(gco2ts(o));
      break;
    }
    case 128: {
      Table *mt = gco2u(o)->metatable;
      markobject(g, mt);
      markobject(g, gco2u(o)->env);
      size = sizeudata(gco2u(o));
      break;
    }
    case 129: {
      UpVal *uv = gco2uv(o);
      markvalue(g, uv->v);
      if (uv->v != &uv->u.value)
        return;
      size = sizeof(UpVal);
      break;
    }
    case 135: {
      gco2lcl(o)->gclist = g->gray;
      g->gray = o;
      return;
    }
    case 136: {
      gco2ccl(o)->gclist = g->gray;
      g->gray = o;
      return;
    }
    case 131: {
      linktable(gco2t(o), &g->gray);
      return;
    }
    case 130: {
      gco2th(o)->gclist = g->gray;
      g->gray = o;
      return;
    }
    case 133: {
      gco2p(o)->gclist = g->gray;
      g->gray = o;
      return;
    }
    default: lua_assert(0); return;
  }
  gray2black(o);
  g->GCmemtrav += size;
}
