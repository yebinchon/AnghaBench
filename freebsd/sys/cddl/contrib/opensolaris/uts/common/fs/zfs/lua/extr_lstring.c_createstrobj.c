
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_6__ {size_t len; unsigned int hash; scalar_t__ extra; } ;
struct TYPE_7__ {TYPE_1__ tsv; } ;
struct TYPE_8__ {TYPE_2__ ts; } ;
typedef TYPE_2__ TString ;
typedef int GCObject ;


 TYPE_4__* luaC_newobj (int *,int,size_t,int **,int ) ;
 int memcpy (TYPE_2__*,char const*,size_t) ;

__attribute__((used)) static TString *createstrobj (lua_State *L, const char *str, size_t l,
                              int tag, unsigned int h, GCObject **list) {
  TString *ts;
  size_t totalsize;
  totalsize = sizeof(TString) + ((l + 1) * sizeof(char));
  ts = &luaC_newobj(L, tag, totalsize, list, 0)->ts;
  ts->tsv.len = l;
  ts->tsv.hash = h;
  ts->tsv.extra = 0;
  memcpy(ts+1, str, l*sizeof(char));
  ((char *)(ts+1))[l] = '\0';
  return ts;
}
