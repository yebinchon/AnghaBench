
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ gray; } ;
typedef TYPE_1__ global_State ;


 int propagatemark (TYPE_1__*) ;

__attribute__((used)) static void propagateall (global_State *g) {
  while (g->gray) propagatemark(g);
}
