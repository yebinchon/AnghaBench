
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int nupvalues; int * v; int * upvalue; } ;
struct TYPE_10__ {TYPE_4__** upvals; TYPE_2__* p; } ;
struct TYPE_9__ {int sizeupvalues; TYPE_1__* upvalues; } ;
struct TYPE_8__ {int * name; } ;
typedef int TValue ;
typedef int TString ;
typedef int StkId ;
typedef TYPE_2__ Proto ;
typedef TYPE_3__ LClosure ;
typedef int GCObject ;
typedef TYPE_4__ CClosure ;




 TYPE_4__* clCvalue (int ) ;
 TYPE_3__* clLvalue (int ) ;
 char const* getstr (int *) ;
 int * obj2gco (TYPE_4__*) ;
 int ttype (int ) ;

__attribute__((used)) static const char *aux_upvalue (StkId fi, int n, TValue **val,
                                GCObject **owner) {
  switch (ttype(fi)) {
    case 129: {
      CClosure *f = clCvalue(fi);
      if (!(1 <= n && n <= f->nupvalues)) return ((void*)0);
      *val = &f->upvalue[n-1];
      if (owner) *owner = obj2gco(f);
      return "";
    }
    case 128: {
      LClosure *f = clLvalue(fi);
      TString *name;
      Proto *p = f->p;
      if (!(1 <= n && n <= p->sizeupvalues)) return ((void*)0);
      *val = f->upvals[n-1]->v;
      if (owner) *owner = obj2gco(f->upvals[n - 1]);
      name = p->upvalues[n-1].name;
      return (name == ((void*)0)) ? "" : getstr(name);
    }
    default: return ((void*)0);
  }
}
