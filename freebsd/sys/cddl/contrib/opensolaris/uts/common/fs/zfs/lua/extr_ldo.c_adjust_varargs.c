
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ top; } ;
typedef TYPE_1__ lua_State ;
struct TYPE_8__ {int numparams; int maxstacksize; } ;
typedef scalar_t__ StkId ;
typedef TYPE_2__ Proto ;


 int luaD_checkstack (TYPE_1__*,int ) ;
 int lua_assert (int) ;
 int setnilvalue (scalar_t__) ;
 int setobjs2s (TYPE_1__*,int ,scalar_t__) ;

__attribute__((used)) static StkId adjust_varargs (lua_State *L, Proto *p, int actual) {
  int i;
  int nfixargs = p->numparams;
  StkId base, fixed;
  lua_assert(actual >= nfixargs);

  luaD_checkstack(L, p->maxstacksize);
  fixed = L->top - actual;
  base = L->top;
  for (i=0; i<nfixargs; i++) {
    setobjs2s(L, L->top++, fixed + i);
    setnilvalue(fixed + i);
  }
  return base;
}
