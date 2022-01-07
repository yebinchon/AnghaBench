
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * mt; } ;
typedef TYPE_1__ global_State ;


 int LUA_NUMTAGS ;
 int markobject (TYPE_1__*,int ) ;

__attribute__((used)) static void markmt (global_State *g) {
  int i;
  for (i=0; i < LUA_NUMTAGS; i++)
    markobject(g, g->mt[i]);
}
