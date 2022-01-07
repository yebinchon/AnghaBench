
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int idx; scalar_t__ instack; } ;
typedef TYPE_3__ Upvaldesc ;
struct TYPE_13__ {int * v; } ;
typedef TYPE_4__ UpVal ;
struct TYPE_11__ {TYPE_1__** upvals; } ;
struct TYPE_15__ {TYPE_2__ l; } ;
struct TYPE_14__ {int sizeupvalues; TYPE_3__* upvalues; TYPE_6__* cache; } ;
struct TYPE_10__ {int * v; } ;
typedef int TValue ;
typedef int * StkId ;
typedef TYPE_5__ Proto ;
typedef TYPE_6__ Closure ;



__attribute__((used)) static Closure *getcached (Proto *p, UpVal **encup, StkId base) {
  Closure *c = p->cache;
  if (c != ((void*)0)) {
    int nup = p->sizeupvalues;
    Upvaldesc *uv = p->upvalues;
    int i;
    for (i = 0; i < nup; i++) {
      TValue *v = uv[i].instack ? base + uv[i].idx : encup[uv[i].idx]->v;
      if (c->l.upvals[i]->v != v)
        return ((void*)0);
    }
  }
  return c;
}
