
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_21__ {scalar_t__ top; } ;
typedef TYPE_2__ lua_State ;
typedef int ZIO ;
struct TYPE_20__ {TYPE_3__* p; } ;
struct TYPE_24__ {TYPE_1__ l; } ;
struct TYPE_23__ {char const* name; int * b; int * Z; TYPE_2__* L; } ;
struct TYPE_22__ {int sizeupvalues; } ;
typedef TYPE_3__ Proto ;
typedef int Mbuffer ;
typedef TYPE_4__ LoadState ;
typedef TYPE_5__ Closure ;


 char const* LUA_SIGNATURE ;
 int LoadFunction (TYPE_4__*,TYPE_3__*) ;
 int LoadHeader (TYPE_4__*) ;
 int incr_top (TYPE_2__*) ;
 TYPE_5__* luaF_newLclosure (TYPE_2__*,int) ;
 TYPE_3__* luaF_newproto (TYPE_2__*) ;
 int luai_verifycode (TYPE_2__*,int *,TYPE_3__*) ;
 int setclLvalue (TYPE_2__*,scalar_t__,TYPE_5__*) ;

Closure* luaU_undump (lua_State* L, ZIO* Z, Mbuffer* buff, const char* name)
{
 LoadState S;
 Closure* cl;
 if (*name=='@' || *name=='=')
  S.name=name+1;
 else if (*name==LUA_SIGNATURE[0])
  S.name="binary string";
 else
  S.name=name;
 S.L=L;
 S.Z=Z;
 S.b=buff;
 LoadHeader(&S);
 cl=luaF_newLclosure(L,1);
 setclLvalue(L,L->top,cl); incr_top(L);
 cl->l.p=luaF_newproto(L);
 LoadFunction(&S,cl->l.p);
 if (cl->l.p->sizeupvalues != 1)
 {
  Proto* p=cl->l.p;
  cl=luaF_newLclosure(L,cl->l.p->sizeupvalues);
  cl->l.p=p;
  setclLvalue(L,L->top-1,cl);
 }
 luai_verifycode(L,buff,cl->l.p);
 return cl;
}
