
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ gcstate; int allweak; int ephemeron; int grayagain; } ;
typedef TYPE_1__ global_State ;
struct TYPE_11__ {unsigned int sizearray; int * array; } ;
typedef TYPE_2__ Table ;
typedef int Node ;


 scalar_t__ GCSpropagate ;
 int checkdeadkey (int *) ;
 int gcvalue (int *) ;
 int gkey (int *) ;
 int * gnode (TYPE_2__*,int ) ;
 int * gnodelast (TYPE_2__*) ;
 int * gval (int *) ;
 scalar_t__ iscleared (TYPE_1__*,int ) ;
 int linkgclist (TYPE_2__*,int ) ;
 int reallymarkobject (TYPE_1__*,int ) ;
 int removeentry (int *) ;
 scalar_t__ ttisnil (int *) ;
 scalar_t__ valiswhite (int *) ;

__attribute__((used)) static int traverseephemeron (global_State *g, Table *h) {
  int marked = 0;
  int hasclears = 0;
  int hasww = 0;
  Node *n, *limit = gnodelast(h);
  unsigned int i;

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
        hasww = 1;
    }
    else if (valiswhite(gval(n))) {
      marked = 1;
      reallymarkobject(g, gcvalue(gval(n)));
    }
  }

  if (g->gcstate == GCSpropagate)
    linkgclist(h, g->grayagain);
  else if (hasww)
    linkgclist(h, g->ephemeron);
  else if (hasclears)
    linkgclist(h, g->allweak);
  return marked;
}
