
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * gray; } ;
typedef TYPE_1__ global_State ;
typedef int GCObject ;


 int lua_assert (int ) ;
 int propagateall (TYPE_1__*) ;

__attribute__((used)) static void propagatelist (global_State *g, GCObject *l) {
  lua_assert(g->gray == ((void*)0));
  g->gray = l;
  propagateall(g);
}
