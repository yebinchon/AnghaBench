
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef int lua_State ;
struct TYPE_13__ {int size; int ** hash; } ;
struct TYPE_15__ {TYPE_1__ strt; int seed; } ;
typedef TYPE_3__ global_State ;
struct TYPE_14__ {unsigned int hash; size_t len; } ;
struct TYPE_16__ {TYPE_2__ tsv; } ;
struct TYPE_12__ {int * next; } ;
typedef TYPE_4__ TString ;
typedef int GCObject ;


 TYPE_3__* G (int *) ;
 int changewhite (int *) ;
 TYPE_10__* gch (int *) ;
 int getstr (TYPE_4__*) ;
 scalar_t__ isdead (TYPE_3__*,int *) ;
 size_t lmod (unsigned int,int ) ;
 unsigned int luaS_hash (char const*,size_t,int ) ;
 scalar_t__ memcmp (char const*,int ,size_t) ;
 TYPE_4__* newshrstr (int *,char const*,size_t,unsigned int) ;
 TYPE_4__* rawgco2ts (int *) ;

__attribute__((used)) static TString *internshrstr (lua_State *L, const char *str, size_t l) {
  GCObject *o;
  global_State *g = G(L);
  unsigned int h = luaS_hash(str, l, g->seed);
  for (o = g->strt.hash[lmod(h, g->strt.size)];
       o != ((void*)0);
       o = gch(o)->next) {
    TString *ts = rawgco2ts(o);
    if (h == ts->tsv.hash &&
        l == ts->tsv.len &&
        (memcmp(str, getstr(ts), l * sizeof(char)) == 0)) {
      if (isdead(G(L), o))
        changewhite(o);
      return ts;
    }
  }
  return newshrstr(L, str, l, h);
}
