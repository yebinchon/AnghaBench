
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * tobefnz; } ;
typedef TYPE_1__ global_State ;
struct TYPE_7__ {int * next; } ;
typedef int GCObject ;


 TYPE_5__* gch (int *) ;
 int makewhite (TYPE_1__*,int *) ;
 int reallymarkobject (TYPE_1__*,int *) ;

__attribute__((used)) static void markbeingfnz (global_State *g) {
  GCObject *o;
  for (o = g->tobefnz; o != ((void*)0); o = gch(o)->next) {
    makewhite(g, o);
    reallymarkobject(g, o);
  }
}
