
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ gcstate; int grayagain; int allweak; int ephemeron; } ;
typedef TYPE_1__ global_State ;
struct TYPE_11__ {int sizearray; int * array; } ;
typedef TYPE_2__ Table ;
typedef int Node ;


 scalar_t__ GCSatomic ;
 int checkdeadkey (int *) ;
 int gcvalue (int *) ;
 int gkey (int *) ;
 int * gnode (TYPE_2__*,int ) ;
 int * gnodelast (TYPE_2__*) ;
 int * gval (int *) ;
 scalar_t__ iscleared (TYPE_1__*,int ) ;
 int linktable (TYPE_2__*,int *) ;
 int reallymarkobject (TYPE_1__*,int ) ;
 int removeentry (int *) ;
 scalar_t__ ttisnil (int *) ;
 scalar_t__ valiswhite (int *) ;

__attribute__((used)) static int traverseephemeron (global_State *g, Table *h) {
  int marked = 0;
  int hasclears = 0;
  int prop = 0;
  Node *n, *limit = gnodelast(h);
  int i;

  for (i = 0; i < h->sizearray; i++) {
    if (valiswhite(&h->array[i])) {
      marked = 1;
      reallymarkobject(g, gcvalue(&h->array[i]));
    }
  }

  for (n = gnode(h, 0); n < limit; n++) {
    checkdeadkey(n);
    if (ttisnil(gval(n)))
      removeentry(n);
    else if (iscleared(g, gkey(n))) {
      hasclears = 1;
      if (valiswhite(gval(n)))
        prop = 1;
    }
    else if (valiswhite(gval(n))) {
      marked = 1;
      reallymarkobject(g, gcvalue(gval(n)));
    }
  }
  if (g->gcstate != GCSatomic || prop)
    linktable(h, &g->ephemeron);
  else if (hasclears)
    linktable(h, &g->allweak);
  else
    linktable(h, &g->grayagain);
  return marked;
}
