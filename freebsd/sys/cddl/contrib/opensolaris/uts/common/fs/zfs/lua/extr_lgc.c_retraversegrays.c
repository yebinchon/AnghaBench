
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * ephemeron; int * grayagain; int * weak; } ;
typedef TYPE_1__ global_State ;
typedef int GCObject ;


 int propagateall (TYPE_1__*) ;
 int propagatelist (TYPE_1__*,int *) ;

__attribute__((used)) static void retraversegrays (global_State *g) {
  GCObject *weak = g->weak;
  GCObject *grayagain = g->grayagain;
  GCObject *ephemeron = g->ephemeron;
  g->weak = g->grayagain = g->ephemeron = ((void*)0);
  propagateall(g);
  propagatelist(g, grayagain);
  propagatelist(g, weak);
  propagatelist(g, ephemeron);
}
